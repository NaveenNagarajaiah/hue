<!--
  Licensed to Cloudera, Inc. under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  Cloudera, Inc. licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->

<template>
  <div class="hue-assist-panel">
    <HueIcons />
    <SqlAssistPanel :use-breadcrumbs="true" :show-first-level-arrows="false" />
  </div>
</template>

<script lang="ts">
  import { defineComponent } from 'vue';

  import './AssistPanel.scss';
  import SqlAssistPanel from './SqlAssistPanel.vue';
  import HueIcons from 'components/icons/vue/HueIcons.vue';

  export default defineComponent({
    name: 'AssistPanel',
    components: { HueIcons, SqlAssistPanel }
  });
</script>
