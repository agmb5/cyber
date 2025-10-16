.class Ljwtc/android/chess/tools/PGNProcessor$2;
.super Ljava/lang/Object;
.source "PGNProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/PGNProcessor;->processPGNFile(Ljava/io/InputStream;)V
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

    .line 83
    iput-object p1, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    iput-object p2, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 85
    iget-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 92
    :goto_0
    iget-object v3, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->val$is:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 93
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v3, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    invoke-virtual {v3, v0}, Ljwtc/android/chess/tools/PGNProcessor;->processPGNPart(Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Ljwtc/android/chess/tools/PGNProcessor$2;->this$0:Ljwtc/android/chess/tools/PGNProcessor;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PGNProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
