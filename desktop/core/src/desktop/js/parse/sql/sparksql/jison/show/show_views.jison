// Licensed to Cloudera, Inc. under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  Cloudera, Inc. licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

Auxiliary
 : ShowViews
 ;

Auxiliary_EDIT
 : ShowViews_EDIT
 ;

ShowViews
 : 'SHOW' 'VIEWS' OptionalFromOrInDatabase OptionalLikeRegex
 ;

ShowViews_EDIT
 : 'SHOW' 'VIEWS' OptionalFromOrInDatabase OptionalLikeRegex 'CURSOR'
   {
     if (!$4 && !$3) {
       parser.suggestKeywords([{ value: 'FROM', weight: 2 }, { value: 'IN', weight: 2 }, { value: 'LIKE', weight: 1 }]);
     } else if (!$4) {
       parser.suggestKeywords(['LIKE']);
     }
   }
 | 'SHOW' 'VIEWS' FromOrInDatabase_EDIT OptionalLikeRegex
 ;