*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2018-2022 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt 11MAY2022
Date Created: 15APR2018   

Associated Filename: ug938-vivado-design-analysis-closure-tutorial.zip
Associated Document: UG938, Vivado Design Suite Tutorial: Design Analysis and 
Closure Techniques
Supported Device(s): Virtex UltraScale+, Virtex Ultrascale
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=============================================================================
15APR2018   1.0          Initial Xilinx release.
29JUN2018   2.0          Added Lab 2: Using Report QoR Suggestions.
16JAN2020   3.0          Updated Lab2 files for 2019.2. 
25AUG2020   4.0          Updated Lab2 and first version of Lab3 files 2020.1 
24JUN2021   5.0          Added Lab4.
11MAY2022   6.0          Upgrade projects for 2022.1
=============================================================================


2. OVERVIEW

This readme describes how to use the files that come with UG938.

Lab 1 walks you through the steps of creating CDC waivers 
and reporting on the waivers. The my_ip_example_design_placed.dcp file is 
provided to demonstrate how to use the waiver mechanism. 

Lab 2 is a guide to using the report_qor_suggestions (RQS) command and working 
with suggestion objects. 

Lab 3 is a guide to using the report_qor_suggestions (RQS) command and working 
with ML Strategies. 

Lab 4 is a guide to using intelligent design runs.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* Xilinx Vivado 2022.1

4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described 
below:

\src
 |
 +-----  \lab1
 |
 |           +--\my_ip_example_design_placed.dcp
 |              Contains the design checkpoint files for creating waivers
 |              covered in Lab 1.
 +-----  \lab2
 |
 |           +--\project_2
 |               This is a vivado project folder with just source files
 +-----  \lab3
 |
 |           +--\project_2
 |               This is a vivado project with an implemented run ready to generate strategies from
 +-----  \lab4
 |
 |           +--\pre_opt.tcl
                 This is an additional file to test a feature of the intelligent design runs. 


5. INSTALLATION AND OPERATING INSTRUCTIONS 

Install Xilinx Vivado 2022.1.


6. OTHER INFORMATION (OPTIONAL) 


7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database. 