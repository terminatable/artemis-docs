const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Get Artemis Engine for examples
    const artemis_engine = b.dependency("artemis_engine", .{
        .target = target,
        .optimize = optimize,
    });

    // Documentation generator
    const docs_exe = b.addExecutable(.{
        .name = "docs-generator",
        .root_source_file = b.path("src/generator.zig"),
        .target = target,
        .optimize = optimize,
    });
    
    docs_exe.root_module.addImport("artemis-engine", artemis_engine.module("artemis-engine"));

    // Generate docs step
    const docs_run = b.addRunArtifact(docs_exe);
    const docs_step = b.step("docs", "Generate API documentation");
    docs_step.dependOn(&docs_run.step);

    // Example code validation
    const validate_examples = b.addExecutable(.{
        .name = "validate-examples",
        .root_source_file = b.path("src/validate.zig"),
        .target = target,
        .optimize = optimize,
    });
    
    validate_examples.root_module.addImport("artemis-engine", artemis_engine.module("artemis-engine"));

    const validate_run = b.addRunArtifact(validate_examples);
    const validate_step = b.step("validate", "Validate documentation examples");
    validate_step.dependOn(&validate_run.step);

    // Test documentation examples
    const test_step = b.step("test", "Test all documentation examples");
    test_step.dependOn(validate_step);
}