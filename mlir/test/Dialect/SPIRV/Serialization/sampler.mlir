// RUN: mlir-translate -test-spirv-roundtrip %s | FileCheck %s

spv.module Logical GLSL450 requires #spv.vce<v1.0, [Shader], []> {
  // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>>, UniformConstant>
  spv.globalVariable @var0 bind(0, 1) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>>, UniformConstant>
}