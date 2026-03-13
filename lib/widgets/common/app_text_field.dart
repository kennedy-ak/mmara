import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';

/// Styled text field with validation support.
class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.validator,
    this.inputFormatters,
    this.autocorrect = true,
    this.autofillHints,
    this.focusNode,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final FocusNode? focusNode;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      initialValue: widget.initialValue,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: _obscureText,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      maxLines: widget.obscureText ? 1 : widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      autocorrect: widget.autocorrect,
      autofillHints: widget.autofillHints,
      focusNode: widget.focusNode,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: _buildSuffixIcon(),
        counterText: widget.maxLength != null ? null : '',
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.suffixIcon != null) {
      return widget.suffixIcon;
    }

    if (widget.obscureText) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
        ),
        onPressed: _toggleObscureText,
      );
    }

    return null;
  }
}

/// Password-specific text field with visibility toggle.
class AppPasswordField extends StatelessWidget {
  const AppPasswordField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.validator,
    this.onSubmitted,
    this.focusNode,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final bool enabled;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hint: hint,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      enabled: enabled,
      prefixIcon: Icons.lock_outline,
      validator: validator,
      onSubmitted: onSubmitted,
      autofillHints: const [AutofillHints.password],
      focusNode: focusNode,
    );
  }
}

/// Email-specific text field.
class AppEmailField extends StatelessWidget {
  const AppEmailField({
    super.key,
    this.label = 'Email',
    this.hint,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.validator,
    this.onSubmitted,
    this.focusNode,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final bool enabled;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hint: hint ?? 'Enter your email',
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icons.email_outlined,
      enabled: enabled,
      validator: validator,
      onSubmitted: onSubmitted,
      autofillHints: const [AutofillHints.email],
      focusNode: focusNode,
    );
  }
}
