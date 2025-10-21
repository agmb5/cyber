.class public Lcom/badlogic/gdx/utils/SharedLibraryLoader;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static is64Bit:Z

.field public static isARM:Z

.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field private static final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativesJar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "os.name"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 38
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 39
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 41
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    const-string v1, "os.arch"

    .line 42
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "aarch64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    .line 43
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "armv8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    const-string v1, "java.runtime.name"

    .line 46
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Android Runtime"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 49
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 50
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 51
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 52
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 54
    :cond_4
    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-nez v1, :cond_5

    .line 55
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 56
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 57
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 58
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 59
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 60
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 64
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    return-void
.end method

.method private canExecute(Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    .line 234
    :try_start_0
    const-class v1, Ljava/io/File;

    const-string v2, "canExecute"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 237
    :cond_0
    const-class v2, Ljava/io/File;

    const-string v4, "setExecutable"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    .line 238
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private canWrite(Ljava/io/File;)Z
    .locals 3

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 222
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 223
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v0

    :catchall_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v2
.end method

.method private extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 260
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :try_start_2
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 262
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x1000

    :try_start_3
    new-array v1, v1, [B

    .line 265
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 273
    invoke-static {p2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-object p3

    :cond_3
    const/4 v3, 0x0

    .line 267
    :try_start_4
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    :goto_2
    move-object v1, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception p2

    move-object v0, v1

    move-object v1, p2

    move-object p2, v0

    .line 270
    :goto_3
    :try_start_5
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error extracting file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nTo: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    .line 273
    :goto_4
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 180
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.io.tmpdir"

    .line 181
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libgdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-static {p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v3

    :catch_0
    nop

    .line 195
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.libgdx/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 199
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".temp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    :cond_3
    const-string p1, "APP_SANDBOX_CONTAINER_ID"

    .line 203
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method

.method public static declared-synchronized isLoaded(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 335
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .locals 0

    .line 322
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method private loadFile(Ljava/lang/String;)V
    .locals 6

    .line 284
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 296
    :try_start_0
    invoke-static {v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-void

    :catchall_0
    nop

    .line 302
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/.libgdx/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 306
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".temp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 310
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const-string v0, "\' in JAR: "

    .line 126
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 127
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read file for extraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 136
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 139
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static declared-synchronized setLoaded(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 331
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public crc(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 80
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 84
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 90
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    :goto_1
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 p1, 0x10

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    move-object p2, v0

    .line 153
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_2

    .line 155
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Unable to find writable path to extract file. Is the user home directory writable?"

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 159
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 162
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 164
    :cond_3
    throw p2
.end method

.method public extractFileTo(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 5

    .line 107
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-eqz v2, :cond_2

    .line 114
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;)V

    .line 117
    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->setLoaded(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 119
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load shared library \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for target: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.name"

    .line 120
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_3

    const-string v1, ", 64-bit"

    goto :goto_1

    :cond_3
    const-string v1, ", 32-bit"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 97
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_0

    const-string p1, "64.dll"

    goto :goto_0

    :cond_0
    const-string p1, ".dll"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    const-string v1, "lib"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    if-eqz p1, :cond_2

    const-string p1, "arm"

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_3

    const-string p1, "64.so"

    goto :goto_2

    :cond_3
    const-string p1, ".so"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_4
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_5

    const-string p1, "64.dylib"

    goto :goto_3

    :cond_5
    const-string p1, ".dylib"

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method
