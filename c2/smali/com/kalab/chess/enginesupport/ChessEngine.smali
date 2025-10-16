.class public Lcom/kalab/chess/enginesupport/ChessEngine;
.super Ljava/lang/Object;
.source "ChessEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChessEngine"


# instance fields
.field private final authority:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final licenseCheckActivity:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->fileName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->authority:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->packageName:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->versionCode:I

    .line 48
    iput-object p6, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->licenseCheckActivity:Ljava/lang/String;

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 84
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private setExecutablePermission(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "744"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 96
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    sget-object v0, Lcom/kalab/chess/enginesupport/ChessEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public checkLicense(Landroid/app/Activity;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lcom/kalab/chess/enginesupport/ChessEngine;->checkLicense(Landroid/app/Activity;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public checkLicense(Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->licenseCheckActivity:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    :cond_0
    new-instance p3, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->licenseCheckActivity:Ljava/lang/String;

    invoke-direct {p3, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copyToFiles(Landroid/content/ContentResolver;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/kalab/chess/enginesupport/ChessEngine;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/kalab/chess/enginesupport/ChessEngine;->copyUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method public copyUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1, p3}, Lcom/kalab/chess/enginesupport/ChessEngine;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p3}, Lcom/kalab/chess/enginesupport/ChessEngine;->setExecutablePermission(Ljava/lang/String;)V

    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/kalab/chess/enginesupport/ChessEngine;->versionCode:I

    return v0
.end method
