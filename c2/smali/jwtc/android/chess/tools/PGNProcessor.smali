.class public abstract Ljwtc/android/chess/tools/PGNProcessor;
.super Ljava/lang/Object;
.source "PGNProcessor.java"


# static fields
.field public static final MSG_FAILED_PGN:I = 0x3

.field public static final MSG_FATAL_ERROR:I = 0x5

.field public static final MSG_FINISHED:I = 0x4

.field public static final MSG_PROCESSED_PGN:I = 0x2

.field public static final MSG_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PGNProcessor"


# instance fields
.field protected failCount:I

.field protected m_thread:Ljava/lang/Thread;

.field protected m_threadUpdateHandler:Landroid/os/Handler;

.field protected mode:I

.field protected successCount:I


# direct methods
.method constructor <init>(ILandroid/os/Handler;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_thread:Ljava/lang/Thread;

    .line 27
    iput p1, p0, Ljwtc/android/chess/tools/PGNProcessor;->mode:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Ljwtc/android/chess/tools/PGNProcessor;->successCount:I

    .line 29
    iput p1, p0, Ljwtc/android/chess/tools/PGNProcessor;->failCount:I

    .line 30
    iput-object p2, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_threadUpdateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract processPGN(Ljava/lang/String;)Z
.end method

.method public processPGNFile(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "PGNProcessor"

    const-string v1, "processPGNFile"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/tools/PGNProcessor$2;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/tools/PGNProcessor$2;-><init>(Ljwtc/android/chess/tools/PGNProcessor;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public processPGNPart(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "[Event \""

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0xa

    .line 114
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 117
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Ljwtc/android/chess/tools/PGNProcessor;->processPGN(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Ljwtc/android/chess/tools/PGNProcessor;->successCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljwtc/android/chess/tools/PGNProcessor;->successCount:I

    const/4 v1, 0x2

    .line 121
    invoke-virtual {p0, v1}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    goto :goto_1

    .line 123
    :cond_1
    iget v1, p0, Ljwtc/android/chess/tools/PGNProcessor;->failCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljwtc/android/chess/tools/PGNProcessor;->failCount:I

    const/4 v1, 0x3

    .line 124
    invoke-virtual {p0, v1}, Ljwtc/android/chess/tools/PGNProcessor;->sendMessage(I)V

    :goto_1
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public processZipFile(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "PGNProcessor"

    const-string v1, "processZipfile"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/tools/PGNProcessor$1;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/tools/PGNProcessor$1;-><init>(Ljwtc/android/chess/tools/PGNProcessor;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_thread:Ljava/lang/Thread;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected sendMessage(I)V
    .locals 4

    .line 134
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    iget v2, p0, Ljwtc/android/chess/tools/PGNProcessor;->mode:I

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    iget v2, p0, Ljwtc/android/chess/tools/PGNProcessor;->successCount:I

    const-string v3, "successCount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget v2, p0, Ljwtc/android/chess/tools/PGNProcessor;->failCount:I

    const-string v3, "failCount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iput p1, v0, Landroid/os/Message;->what:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 142
    iget-object p1, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_threadUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopProcessing()V
    .locals 1

    .line 74
    iget-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Ljwtc/android/chess/tools/PGNProcessor;->m_thread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
