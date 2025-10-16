.class public Lcom/badlogic/gdx/physics/box2d/utils/Box2DBuild;
.super Ljava/lang/Object;
.source "Box2DBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    sget-object p0, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object p0

    .line 14
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v1

    .line 15
    sget-object v3, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v3

    .line 16
    sget-object v4, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v4, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v4

    .line 17
    sget-object v5, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v5, v0, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;ZZ)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v5

    .line 18
    sget-object v6, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v6, v2, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;ZZ)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v6

    .line 19
    sget-object v7, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Android:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v7, v0}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v7

    .line 20
    sget-object v8, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v8, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v8

    .line 21
    sget-object v9, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->IOS:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v9, v0}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v9

    .line 22
    new-instance v10, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;

    invoke-direct {v10}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "../../../gdx/bin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "src"

    const-string v13, "jni"

    invoke-virtual {v10, v12, v11, v13}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v10, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;

    invoke-direct {v10}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;-><init>()V

    new-instance v11, Lcom/badlogic/gdx/jnigen/BuildConfig;

    const-string v12, "gdx-box2d"

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/jnigen/BuildConfig;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/badlogic/gdx/jnigen/BuildTarget;

    aput-object p0, v12, v0

    aput-object v1, v12, v2

    const/4 p0, 0x2

    aput-object v3, v12, p0

    const/4 p0, 0x3

    aput-object v4, v12, p0

    const/4 p0, 0x4

    aput-object v5, v12, p0

    const/4 p0, 0x5

    aput-object v6, v12, p0

    const/4 p0, 0x6

    aput-object v8, v12, p0

    const/4 p0, 0x7

    aput-object v7, v12, p0

    const/16 p0, 0x8

    aput-object v9, v12, p0

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;->generate(Lcom/badlogic/gdx/jnigen/BuildConfig;[Lcom/badlogic/gdx/jnigen/BuildTarget;)V

    return-void
.end method
