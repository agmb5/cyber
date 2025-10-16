.class Ljwtc/android/chess/engine/UCIEngine$2;
.super Ljava/lang/Object;
.source "UCIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/engine/UCIEngine;->install(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$sEngine:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 207
    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$sEngine:Ljava/lang/String;

    iput-object p2, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "/data/data/jwtc.android.chess/"

    const-string v1, "UCIEngine"

    .line 210
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$sEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 213
    :goto_0
    iget-object v4, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 214
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 218
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "chmod"

    .line 221
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "744"

    .line 222
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v3, p0, Ljwtc/android/chess/engine/UCIEngine$2;->val$sEngine:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v2, v0}, Ljwtc/android/chess/engine/UCIEngine;->runConsole(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "install completed"

    .line 226
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
