.class Ljwtc/android/chess/engine/LocalEngine$1;
.super Ljava/lang/Object;
.source "LocalEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/engine/LocalEngine;->installDb(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/engine/LocalEngine;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$outFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljwtc/android/chess/engine/LocalEngine;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 26
    iput-object p1, p0, Ljwtc/android/chess/engine/LocalEngine$1;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iput-object p2, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$outFilename:Ljava/lang/String;

    iput-object p3, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$outFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 32
    :goto_0
    iget-object v2, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 37
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 39
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine$1;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iget-object v1, p0, Ljwtc/android/chess/engine/LocalEngine$1;->val$outFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljwtc/android/chess/engine/LocalEngine;->setOpeningDb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installDb exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
