.class Ljwtc/android/chess/engine/LocalEngine$RunnableImp;
.super Ljava/lang/Object;
.source "LocalEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/engine/LocalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableImp"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/engine/LocalEngine;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/engine/LocalEngine;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/engine/LocalEngine;Ljwtc/android/chess/engine/LocalEngine$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;-><init>(Ljwtc/android/chess/engine/LocalEngine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 89
    :try_start_0
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljwtc/chess/JNI;->isEnded()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v2, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iget v2, v2, Ljwtc/android/chess/engine/LocalEngine;->ply:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "From opening book"

    if-lez v2, :cond_2

    .line 95
    :try_start_1
    iget-object v2, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iget v2, v2, Ljwtc/android/chess/engine/LocalEngine;->ply:I

    invoke-virtual {v0, v2}, Ljwtc/chess/JNI;->searchDepth(I)V

    .line 96
    invoke-virtual {v0}, Ljwtc/chess/JNI;->getMove()I

    move-result v2

    .line 97
    iget-object v4, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v4, v2}, Ljwtc/android/chess/engine/LocalEngine;->sendMoveMessageFromThread(I)V

    .line 99
    invoke-virtual {v0}, Ljwtc/chess/JNI;->getEvalCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searched at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iget v2, v2, Ljwtc/android/chess/engine/LocalEngine;->ply:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ply"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    :goto_0
    iget-object v0, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v0, v3}, Ljwtc/android/chess/engine/LocalEngine;->sendMessageFromThread(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 110
    :cond_2
    iget-object v2, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    iget v2, v2, Ljwtc/android/chess/engine/LocalEngine;->msecs:I

    const/16 v4, 0x3e8

    div-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljwtc/chess/JNI;->searchMove(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 116
    :goto_1
    invoke-virtual {v0}, Ljwtc/chess/JNI;->peekSearchDone()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "%.2f"

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_7

    int-to-long v11, v4

    .line 117
    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 119
    invoke-virtual {v0}, Ljwtc/chess/JNI;->peekSearchDepth()I

    move-result v2

    .line 121
    invoke-virtual {v0}, Ljwtc/chess/JNI;->peekSearchBestValue()I

    move-result v11

    .line 122
    invoke-virtual {v0}, Ljwtc/chess/JNI;->getEvalCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    int-to-float v11, v11

    div-float/2addr v11, v8

    const/4 v8, 0x5

    if-le v2, v8, :cond_3

    const/4 v2, 0x5

    :cond_3
    const-string v12, ""

    move-object v14, v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_5

    .line 131
    :try_start_3
    invoke-virtual {v0, v13}, Ljwtc/chess/JNI;->peekSearchBestMove(I)I

    move-result v15

    if-eqz v15, :cond_4

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljwtc/chess/Move;->toDbgString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x3e8

    goto :goto_2

    :cond_5
    if-ne v2, v8, :cond_6

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 139
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v10

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v4, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v4, v2}, Ljwtc/android/chess/engine/LocalEngine;->sendMessageFromThread(Ljava/lang/String;)V

    const/16 v4, 0x3e8

    goto/16 :goto_1

    .line 144
    :cond_7
    invoke-virtual {v0}, Ljwtc/chess/JNI;->getMove()I

    move-result v2

    .line 145
    iget-object v4, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v4, v2}, Ljwtc/android/chess/engine/LocalEngine;->sendMoveMessageFromThread(I)V

    .line 147
    invoke-virtual {v0}, Ljwtc/chess/JNI;->peekSearchBestValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 149
    invoke-virtual {v0}, Ljwtc/chess/JNI;->getEvalCount()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 155
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v4, v3

    .line 156
    div-int/2addr v0, v4

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " N/s ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " s)\n\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    :goto_3
    iget-object v0, v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;->this$0:Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v0, v3}, Ljwtc/android/chess/engine/LocalEngine;->sendMessageFromThread(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 164
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_4
    return-void
.end method
