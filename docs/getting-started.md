# Getting Started with Artemis Engine

Welcome to Artemis Engine! This guide will get you up and running with your first game in just a few minutes.

## Prerequisites

- **Zig 0.15.1+** - [Download from ziglang.org](https://ziglang.org/download/)
- **Git** - For cloning repositories
- **Text Editor** - VS Code, Vim, or your favorite editor

## Quick Start

### 1. Create Your Game Project

```bash
# Create a new directory
mkdir my-awesome-game
cd my-awesome-game

# Initialize with Zig
zig init
```

### 2. Add Artemis Engine Dependency

Edit your `build.zig.zon`:

```zig
.{
    .name = "my-awesome-game",
    .version = "0.1.0",
    .dependencies = .{
        .artemis_engine = .{
            .url = "https://github.com/terminatable/artemis-engine/archive/main.tar.gz",
            .hash = "...", // zig will provide this
        },
    },
}
```

### 3. Write Your First Game

Replace `src/main.zig` with:

```zig
const std = @import("std");
const artemis = @import("artemis-engine");

// Define game components
const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };
const Player = struct {};

// Movement system
const MovementSystem = struct {
    pub fn update(world: *artemis.World, dt: f32) !void {
        var query = world.query(.{ Position, Velocity });
        while (query.next()) |entity| {
            const pos = world.get(Position, entity).?;
            const vel = world.get(Velocity, entity).?;
            
            pos.x += vel.x * dt;
            pos.y += vel.y * dt;
        }
    }
};

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    std.debug.print("🚀 Starting My Awesome Game!\n");

    // Create ECS world
    var world = artemis.World.init(gpa.allocator());
    defer world.deinit();

    // Create player entity
    const player = world.entity();
    try world.set(Position, player, .{ .x = 0, .y = 0 });
    try world.set(Velocity, player, .{ .x = 100, .y = 50 });
    try world.set(Player, player, .{});

    // Game loop
    for (0..10) |frame| {
        const dt: f32 = 1.0 / 60.0; // 60 FPS
        
        try MovementSystem.update(&world, dt);
        
        // Print player position
        if (world.get(Position, player)) |pos| {
            std.debug.print("Frame {}: Player at ({d:.2}, {d:.2})\n", 
                .{ frame, pos.x, pos.y });
        }
    }

    std.debug.print("✨ Game completed successfully!\n");
}
```

### 4. Update Build Configuration

Modify `build.zig` to use Artemis Engine:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Get Artemis Engine dependency
    const artemis_engine = b.dependency("artemis_engine", .{
        .target = target,
        .optimize = optimize,
    });

    // Create your game executable
    const exe = b.addExecutable(.{
        .name = "my-awesome-game",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Add Artemis Engine import
    exe.root_module.addImport("artemis-engine", artemis_engine.module("artemis-engine"));

    // Install the executable
    b.installArtifact(exe);

    // Create run step
    const run_cmd = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run the game");
    run_step.dependOn(&run_cmd.step);
}
```

### 5. Run Your Game!

```bash
# Build and run
zig build run
```

You should see output like:

```
🚀 Starting My Awesome Game!
Frame 0: Player at (1.67, 0.83)
Frame 1: Player at (3.33, 1.67)
Frame 2: Player at (5.00, 2.50)
...
✨ Game completed successfully!
```

🎉 **Congratulations!** You've just created your first Artemis Engine game!

## What's Next?

### Learn Core Concepts
- [ECS Architecture](./ecs-architecture.md) - Understanding entities, components, and systems
- [Query System](./query-system.md) - Finding and filtering entities
- [Systems Guide](./systems-guide.md) - Building game logic

### Add More Features
- [User Interface](./adding-ui.md) - Creating game menus and HUDs
- [Input Handling](./input-handling.md) - Responding to player input
- [Audio System](./audio-system.md) - Adding sound and music

### Explore Examples
- [Basic Examples](https://github.com/terminatable/artemis-examples) - Learn by example
- [Forsaken RPG](https://github.com/terminatable/forsaken-game) - Complete game showcase

### Join the Community
- [Discord](https://discord.gg/terminatable) - Chat with other developers
- [GitHub Discussions](https://github.com/orgs/terminatable/discussions) - Ask questions and share ideas

---

Ready to build amazing games? Let's continue with the [ECS Architecture Guide](./ecs-architecture.md)! 🚀