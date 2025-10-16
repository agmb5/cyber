.class Ljwtc/android/chess/tools/PGNProcessor$1;
.super Ljava/lang/Object;
.source "PGNProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/PGNProcessor;->processZipFile(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/tools/PGNProcessor;

.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/PGNProcessor;Ljava/io/InputStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    iput-object p2, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "PGNProcessor"

    .line 38
    iget-object v1, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    .line 39
    new-instance v1, Ljava/util/zip/ZipInputStream;

    iget-object v2, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->val$is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".pgn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x800

    new-array v4, v3, [B

    :goto_1
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 55
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 58
    :cond_2
    iget-object v3, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/tools/PGNProcessor;->processPGNPart(Ljava/lang/StringBuffer;)V

    .line 60
    iget-object v2, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    iget-object v2, p0, Ljwtc/android/chess/tools/PGNProcessor$1;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
