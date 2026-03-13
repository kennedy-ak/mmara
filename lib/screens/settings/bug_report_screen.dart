import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:go_router/go_router.dart';
import '../../models/bug_report.dart';
import '../../providers/bug_report_provider.dart';
import '../../theme/app_colors.dart';
import '../../router/routes.dart';

/// Bug report screen - allows users to submit bug reports.
class BugReportScreen extends ConsumerStatefulWidget {
  const BugReportScreen({super.key});

  @override
  ConsumerState<BugReportScreen> createState() => _BugReportScreenState();
}

class _BugReportScreenState extends ConsumerState<BugReportScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stepsController = TextEditingController();
  final _expectedController = TextEditingController();
  final _actualController = TextEditingController();

  String _selectedBugType = 'ui';
  String _selectedSeverity = 'medium';
  bool _isSubmitting = false;

  String _appVersion = 'Unknown';

  final _bugTypes = [
    {'value': 'ui', 'label': 'UI/Design', 'icon': Icons.palette_outlined},
    {'value': 'api', 'label': 'API/Connection', 'icon': Icons.cloud_off_outlined},
    {'value': 'performance', 'label': 'Performance', 'icon': Icons.speed_outlined},
    {'value': 'accuracy', 'label': 'Response Accuracy', 'icon': Icons.psychology_outlined},
    {'value': 'other', 'label': 'Other', 'icon': Icons.more_horiz},
  ];

  final _severities = [
    {'value': 'low', 'label': 'Low', 'color': AppColors.tertiary},
    {'value': 'medium', 'label': 'Medium', 'color': Colors.orange},
    {'value': 'high', 'label': 'High', 'color': AppColors.secondary},
    {'value': 'critical', 'label': 'Critical', 'color': AppColors.error},
  ];

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = info.version;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _stepsController.dispose();
    _expectedController.dispose();
    _actualController.dispose();
    super.dispose();
  }

  Future<void> _submitBugReport() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    final request = BugReportRequest(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      bugType: _selectedBugType,
      severity: _selectedSeverity,
      stepsToReproduce: _stepsController.text.trim().isEmpty
          ? null
          : _stepsController.text.trim(),
      expectedBehavior: _expectedController.text.trim().isEmpty
          ? null
          : _expectedController.text.trim(),
      actualBehavior: _actualController.text.trim().isEmpty
          ? null
          : _actualController.text.trim(),
      deviceInfo: _getDeviceInfo(),
      appVersion: _appVersion,
    );

    try {
      await ref.read(bugReportSubmitterProvider.notifier).submitBugReport(request);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Bug report submitted successfully. Thank you!'),
            backgroundColor: AppColors.tertiary,
            behavior: SnackBarBehavior.floating,
          ),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to submit bug report: ${e.toString()}'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }

  String _getDeviceInfo() {
    // Simple device info string
    return 'Mobile App';
  }

  @override
  Widget build(BuildContext context) {
    final submitState = ref.watch(bugReportSubmitterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Report a Bug'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Info card
              Card(
                color: AppColors.surfaceContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Help us improve MMara by reporting any issues you encounter. '
                          'We\'ll review your report and work on a fix.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Title
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title *',
                  hintText: 'Brief summary of the issue',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a title';
                  }
                  if (value.trim().length < 5) {
                    return 'Title must be at least 5 characters';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Description
              TextFormField(
                controller: _descriptionController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Description *',
                  hintText: 'Describe the issue in detail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a description';
                  }
                  if (value.trim().length < 10) {
                    return 'Description must be at least 10 characters';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Bug Type
              const Text(
                'Bug Type *',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _bugTypes.map((type) {
                  final isSelected = _selectedBugType == type['value'];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedBugType = type['value'] as String;
                      });
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.outline,
                          width: isSelected ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: isSelected
                            ? AppColors.primary.withOpacity(0.1)
                            : null,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            type['icon'] as IconData,
                            size: 18,
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.onSurfaceVariant,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            type['label'] as String,
                            style: TextStyle(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.onSurfaceVariant,
                              fontWeight: isSelected
                                  ? FontWeight.w500
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 16),

              // Severity
              const Text(
                'Severity *',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: _severities.map((severity) {
                  final isSelected = _selectedSeverity == severity['value'];
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedSeverity = severity['value'] as String;
                        });
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? severity['color'] as Color
                                : AppColors.outline,
                            width: isSelected ? 2 : 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: isSelected
                              ? (severity['color'] as Color).withOpacity(0.1)
                              : null,
                        ),
                        child: Text(
                          severity['label'] as String,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: isSelected
                                ? severity['color'] as Color
                                : AppColors.onSurfaceVariant,
                            fontWeight:
                                isSelected ? FontWeight.w600 : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 24),

              // Optional fields section
              Row(
                children: [
                  Icon(
                    Icons.expand_more,
                    size: 20,
                    color: AppColors.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Additional Details (Optional)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Steps to reproduce
              TextFormField(
                controller: _stepsController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Steps to Reproduce',
                  hintText: 'How can we reproduce this issue?',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Expected behavior
              TextFormField(
                controller: _expectedController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Expected Behavior',
                  hintText: 'What did you expect to happen?',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Actual behavior
              TextFormField(
                controller: _actualController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Actual Behavior',
                  hintText: 'What actually happened?',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 32),

              // Submit button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _isSubmitting ? null : _submitBugReport,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.onPrimary,
                    disabledBackgroundColor: AppColors.outline,
                  ),
                  child: _isSubmitting
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.onPrimary,
                            ),
                          ),
                        )
                      : const Text(
                          'Submit Bug Report',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
