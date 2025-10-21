.class public Lcom/badlogic/gdx/utils/GdxBuild;
.super Ljava/lang/Object;
.source "GdxBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;

    invoke-direct {v0}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;-><init>()V

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "**/*"

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const-string v1, "src"

    const-string v2, "bin"

    const-string v8, "jni"

    const/4 v5, 0x0

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "iosgl/**"

    aput-object v1, v0, v7

    .line 39
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v1, v7}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v1

    const-string v2, ""

    .line 40
    iput-object v2, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->compilerPrefix:Ljava/lang/String;

    const-string v2, "build-windows32home.xml"

    .line 41
    iput-object v2, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->buildFileName:Ljava/lang/String;

    .line 42
    iput-boolean v6, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->excludeFromMasterBuildFile:Z

    .line 43
    iput-object v0, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 44
    sget-object v2, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v2, v7}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v2

    .line 45
    iput-object v0, v2, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 46
    sget-object v3, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v3, v6}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v3

    .line 47
    iput-object v0, v3, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 48
    sget-object v4, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v4, v7}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v4

    .line 49
    iput-object v0, v4, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 50
    sget-object v5, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v5, v6}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v5

    .line 51
    iput-object v0, v5, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 52
    sget-object v9, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v9, v7, v6}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;ZZ)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v9

    .line 53
    iput-object v0, v9, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 54
    sget-object v10, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v10, v6, v6}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;ZZ)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v10

    .line 55
    iput-object v0, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 56
    sget-object v11, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Android:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v11, v7}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v11

    .line 57
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -llog"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    .line 58
    iput-object v0, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 59
    sget-object v12, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v12, v6}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v12

    .line 60
    iput-object v0, v12, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->IOS:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v0, v7}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v0

    new-array v13, v6, [Ljava/lang/String;

    const-string v14, "iosgl"

    aput-object v14, v13, v7

    .line 62
    iput-object v13, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->headerDirs:[Ljava/lang/String;

    .line 63
    new-instance v13, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;

    invoke-direct {v13}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/jnigen/BuildConfig;

    const-string v15, "gdx"

    const-string v6, "../target/native"

    const-string v7, "libs"

    invoke-direct {v14, v15, v6, v7, v8}, Lcom/badlogic/gdx/jnigen/BuildConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa

    new-array v6, v6, [Lcom/badlogic/gdx/jnigen/BuildTarget;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    aput-object v4, v6, v1

    const/4 v1, 0x5

    aput-object v5, v6, v1

    const/4 v1, 0x6

    aput-object v9, v6, v1

    const/4 v1, 0x7

    aput-object v10, v6, v1

    const/16 v1, 0x8

    aput-object v11, v6, v1

    const/16 v1, 0x9

    aput-object v0, v6, v1

    invoke-virtual {v13, v14, v6}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;->generate(Lcom/badlogic/gdx/jnigen/BuildConfig;[Lcom/badlogic/gdx/jnigen/BuildTarget;)V

    return-void
.end method
