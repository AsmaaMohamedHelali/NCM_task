import 'package:flutter/material.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;

  final String? label;

  final String? hint;


  final int? maxLines;

  final String? placeholder;

  final Color? backgroundColor;
  final TextStyle? labelStyle;

  final TextStyle? placeholderStyle;

  final TextInputType keyboardType;

  final bool obscureText;

  final TextAlign textAlign;
  final Widget? suffixIcon;

  final void Function(String)? onChanged;

  final void Function(String?)? onValidInput;

  final TextDirection? textDirection;

  final Function()? onTap;
  final Function()? onTapOutside;

  const AppTextField(
      {required this.controller,
      this.onChanged,
      this.onValidInput,
      this.label,
      this.hint,
        this.maxLines,
      this.placeholder,
      this.placeholderStyle,
      this.suffixIcon,
      this.onTap,
      this.onTapOutside,
      this.labelStyle,
      this.backgroundColor,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.textDirection,
      this.focusNode,
      this.textAlign = TextAlign.start,
      super.key});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? AppColors.lightGray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        autofocus: false,
        maxLines: widget.maxLines??1,
        focusNode: widget.focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        textAlign: widget.textAlign,
        style: widget.labelStyle ??
            Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.textColor,
                ),
        decoration: InputDecoration(
          hintText: widget.placeholder,
          label: widget.label != null
              ? Text(
                  widget.label!,
                  style: widget.labelStyle ??
                      Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.textColor,
                          ),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            vertical: AppSizeConfig.height(context: context, pixels: 10),
            horizontal: AppSizeConfig.width(context: context, pixels: 8),
          ),
          hintStyle: widget.labelStyle ??
              Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.textColor,
                  ),
          suffixIcon: widget.suffixIcon,
          border: _buildBorder(),
          enabledBorder: _buildBorder(),
          focusedBorder: _buildBorder(),
          errorBorder: _buildBorder(),
          focusedErrorBorder: _buildBorder(),
          disabledBorder: _buildBorder(),
        ),
      ),
    );
  }

  InputBorder _buildBorder() => InputBorder.none;
}
