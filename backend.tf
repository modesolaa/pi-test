/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# Backend configuration for terraform state storage
terraform {
    required_version = "~> 1.5.1"
   backend "gcs" {                                     # Uncomment this line prior to running.
   bucket = "mode-test"              # Uncomment this line prior to running. We are using the manually created bootstrap project at organization level in the hierarchy.  You don't need to change this, unless the way we store state changes.
   prefix = "terraform/state/pi-assignment"    # Uncomment beginning of line after inputting proper unique state storage bucket path. A unique path is CRITICAL to not interfere with other terraform code!
 }
}
