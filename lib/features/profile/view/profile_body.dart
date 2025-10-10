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
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameController.text = username;
    emailController.text = email;
    addressController.text = address;
  }

  void toggleEdit() {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        saveChanges();
      }
    });
  }

  void saveChanges() {
    setState(() {
      username = usernameController.text;
      email = emailController.text;
      address = addressController.text;
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
                  onPressed: toggleEdit,
                ),
                CustomText(
                  isEditing ? "Cancel Edit" : "Edit Profile",
                  color: AppColors.wh,
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            ProfileField(
              label: "Username",
              value: username,
              isEditing: isEditing,
              controller: usernameController,
              onEdit: () => toggleEdit(),
            ),
            ProfileField(
              label: "Email",
              value: email,
              isEditing: isEditing,
              controller: emailController,
              onEdit: () => toggleEdit(),
            ),
            ProfileField(
              label: "Address",
              value: address,
              isEditing: isEditing,
              controller: addressController,
              onEdit: () => toggleEdit(),
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
              onEdit: () => toggleEdit(),
            ),
            if (isEditing) ...[
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GradientButton(
                  onPressed: toggleEdit,
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
    usernameController.dispose();
    emailController.dispose();
    addressController.dispose();
    super.dispose();
  }
}