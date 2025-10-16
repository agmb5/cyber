.class Ljwtc/android/chess/engine/UCIEngine$3;
.super Ljava/lang/Object;
.source "UCIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/engine/UCIEngine;->installDb(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$sDatabase:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 236
    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$sDatabase:Ljava/lang/String;

    iput-object p2, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "/data/data/jwtc.android.chess/"

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$sDatabase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 243
    :goto_0
    iget-object v3, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$in:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 244
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 248
    iget-object v1, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "chmod"

    .line 251
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "744"

    .line 252
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$3;->val$sDatabase:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v1, v0}, Ljwtc/android/chess/engine/UCIEngine;->runConsole(Ljava/util/List;Ljava/lang/String;)V

    .line 255
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v2, "ls"

    .line 256
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-la"

    .line 257
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {v1, v0}, Ljwtc/android/chess/engine/UCIEngine;->runConsole(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCIEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
