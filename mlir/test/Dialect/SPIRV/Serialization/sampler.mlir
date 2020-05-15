// RUN: mlir-translate -test-spirv-roundtrip %s | FileCheck %s

spv.module Logical GLSL450 requires #spv.vce<v1.0, [Shader], []> {
    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var0 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<si32, Dim3D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var2 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<si32, Dim3D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<i32, Cube, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var3 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<i32, Cube, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Rect, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var4 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Rect, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<si32, Dim2D, NoDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var5 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<si32, Dim2D, NoDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Buffer, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var6 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Buffer, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, NoDepth, NonArrayed, MultiSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var7 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, NoDepth, NonArrayed, MultiSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, NoDepth, Arrayed, MultiSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var8 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, NoDepth, Arrayed, MultiSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, IsDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var9 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, IsDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, IsDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var10 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Dim2D, IsDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>

    // CHECK: !spv.ptr<!spv.sampledimage<!spv.image<f32, Cube, IsDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
    spv.globalVariable @var11 bind(0, 0) : !spv.ptr<!spv.sampledimage<!spv.image<f32, Cube, IsDepth, Arrayed, SingleSampled, NeedSampler, Unknown>>, UniformConstant>
}