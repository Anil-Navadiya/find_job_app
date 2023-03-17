import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder_flutter_ui/Ui/homePage.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../Constant File/option_constant.dart';
import '../String Files/image_string.dart';
import '../String Files/text_string.dart';

class MoreOptionSelectedScreen extends StatefulWidget {
  const MoreOptionSelectedScreen({Key? key}) : super(key: key);

  @override
  State<MoreOptionSelectedScreen> createState() =>
      _MoreOptionSelectedScreenState();
}

class _MoreOptionSelectedScreenState
    extends State<MoreOptionSelectedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(profile),
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              welComeBack,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.sp),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              danial,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 25.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    findJobToday,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///__________________________ search Container___________________________
                  Row(
                    children: [
                      SizedBox(
                        width: 250.w,
                        height: 50.h,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          // controller: searchController.searchTextController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) {
                            // searchController.searchString!.value = value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide: const BorderSide(color: Colors.black)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide: const BorderSide(color: Colors.black)),
                            hintText: 'Search here.....',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide:
                                    const BorderSide(color: Colors.black)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide:
                                    const BorderSide(color: Colors.black, width: 2)),
                            //labelText: 'Life story',
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.search,
                                size: 26.sp, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 50.h,
                        width: 55.w,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             FilterSearchPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                          child: const Icon(
                            Icons.format_list_bulleted,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28.h),

                  ///___________________Job_title____________________________________
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobTitle,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: jobTitleList.map(
                            (hobby) {
                              bool isSelected = false;
                              if (selectedJobTitle!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!selectedJobTitle!.contains(hobby)) {
                                    if (selectedJobTitle!.length < 5) {
                                      selectedJobTitle!.add(hobby);
                                      setState(() {});
                                      print(selectedJobTitle);
                                    }
                                  } else {
                                    selectedJobTitle!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(selectedJobTitle);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///___________________ Country ___________________________________
                  SizedBox(height: 28.h),

                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          country,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: countryList.map(
                            (hobby) {
                              bool isSelected = false;
                              if (selectedCountryTitle!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!selectedCountryTitle!.contains(hobby)) {
                                    if (selectedCountryTitle!.length < 5) {
                                      selectedCountryTitle!.add(hobby);
                                      setState(() {});
                                      print(selectedCountryTitle);
                                    }
                                  } else {
                                    selectedCountryTitle!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(selectedCountryTitle);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Work_experience ==============
                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workExperience,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: workExperienceList.map(
                            (hobby) {
                              bool isSelected = false;
                              if (selectedWorkExperienceTitle!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!selectedWorkExperienceTitle!.contains(hobby)) {
                                    if (selectedJobTitle!.length < 5) {
                                      selectedWorkExperienceTitle!.add(hobby);
                                      setState(() {});
                                      print(selectedWorkExperienceTitle);
                                    }
                                  } else {
                                    selectedWorkExperienceTitle!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(selectedWorkExperienceTitle);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Employment ==============

                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          employment,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: employmentList.map(
                            (hobby) {
                              bool isSelected = false;
                              if (selectedEmploymentList!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!selectedEmploymentList!.contains(hobby)) {
                                    if (selectedEmploymentList!.length < 5) {
                                      selectedEmploymentList!.add(hobby);
                                      setState(() {});
                                      print(selectedEmploymentList);
                                    }
                                  } else {
                                    selectedEmploymentList!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(selectedEmploymentList);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Salary from ==============
                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          salaryFrom,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: salaryList.map(
                            (hobby) {
                              bool isSelected = false;
                              if (selectedSalaryList!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!selectedSalaryList!.contains(hobby)) {
                                    if (selectedSalaryList!.length < 5) {
                                      selectedSalaryList!.add(hobby);
                                      setState(() {});
                                      print(selectedSalaryList);
                                    }
                                  } else {
                                    selectedSalaryList!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(selectedSalaryList);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 45.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: const Text(
                    submit,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
