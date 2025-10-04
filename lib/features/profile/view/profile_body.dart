import 'dart:io';
import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/core/widgets/gradient_button.dart'; 
import 'package:flutter/material.dart';
import 'package:clima_quest/features/profile/widgets/profile_field.dart';
import 'package:clima_quest/features/profile/widgets/profile_image_picker.dart';
import 'package:go_router/go_router.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  File? profileImage;

  String username = "Nada Ali";
  String email = "nadaeloksh55@gmail.com";
  String address = "Egypt, Cairo";
  String favWeather = "Sunny";

  bool isEditing = false;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = username;
    _emailController.text = email;
    _addressController.text = address;
  }

  void _toggleEdit() {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        // حفظ التغييرات عند الخروج من وضع التعديل
        _saveChanges();
      }
    });
  }

  void _saveChanges() {
    setState(() {
      username = _usernameController.text;
      email = _emailController.text;
      address = _addressController.text;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ProfileImagePicker(
              defaultImage: "assets/images/nadaPhoto.jpg",
              onImageSelected: (file) {
                setState(() {
                  profileImage = file;
                });
              },
            ),
            const SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    isEditing ? Icons.close : Icons.edit,
                    color: Colors.purple,
                  ),
                  onPressed: _toggleEdit,
                ),
                CustomText(
                  isEditing ? "Cancel Edit" : "Edit Profile",
                  color: Colors.white,
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            ProfileField(
              label: "Username",
              value: username,
              isEditing: isEditing,
              controller: _usernameController,
              onEdit: () => _toggleEdit(),
            ),
            ProfileField(
              label: "Email",
              value: email,
              isEditing: isEditing,
              controller: _emailController,
              onEdit: () => _toggleEdit(),
            ),
            ProfileField(
              label: "Address",
              value: address,
              isEditing: isEditing,
              controller: _addressController,
              onEdit: () => _toggleEdit(),
            ),
            ProfileField(
              label: "Favorite Weather",
              value: favWeather,
              isDropdown: true,
              isEditing: isEditing,
              dropdownItems: ["Sunny", "Cloudy", "Rainy", "Snowy", "Windy"],
              selectedItem: favWeather,
              onChanged: (value) {
                setState(() {
                  favWeather = value!;
                });
              },
              onEdit: () => _toggleEdit(),
            ),
            if (isEditing) ...[
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GradientButton(
                  onPressed: _toggleEdit,
                  text:  "Save Changes",
                ),
              ),
              const SizedBox(height: 10),
            ],
            if (!isEditing)
              Padding(
                padding: const EdgeInsets.all(16),
                child: GradientButton(
                  onPressed: ()=> context.go(Routes.splash),
                   text: "Logout",
                  gradient: AppColors.logoutColor,
                ),
              ),
              SizedBox(height:80),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}