.class Ljwtc/android/chess/engine/UCIEngine$1;
.super Ljava/lang/Object;
.source "UCIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/engine/UCIEngine;->initEngine(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/engine/UCIEngine;


# direct methods
.method constructor <init>(Ljwtc/android/chess/engine/UCIEngine;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "depth"

    const-string v1, "UCIEngine"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-static {v5}, Ljwtc/android/chess/engine/UCIEngine;->access$000(Ljwtc/android/chess/engine/UCIEngine;)Ljava/io/BufferedReader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ">>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    .line 105
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-virtual {v0}, Ljwtc/android/chess/engine/UCIEngine;->sendErrorMessageFromThread()V

    goto/16 :goto_4

    :cond_0
    const-string v6, "info"

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " "

    if-ltz v6, :cond_6

    .line 113
    :try_start_1
    rem-int/lit8 v6, v4, 0xa

    if-nez v6, :cond_5

    .line 114
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v8, 0x0

    .line 117
    :goto_1
    array-length v9, v5

    if-ge v8, v9, :cond_4

    .line 119
    aget-object v9, v5, v8

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "\t"

    if-eqz v9, :cond_1

    .line 120
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 121
    :cond_1
    aget-object v9, v5, v8

    const-string v11, "nodes"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 123
    :cond_2
    aget-object v9, v5, v8

    const-string v11, "nps"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    :cond_3
    :goto_2
    aget-object v9, v5, v8

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 132
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 133
    iget-object v5, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-virtual {v5, v6}, Ljwtc/android/chess/engine/UCIEngine;->sendMessageFromThread(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const-string v6, "bestmove"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_8

    add-int/lit8 v6, v6, 0x9

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 146
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 148
    :cond_7
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-static {v6}, Ljwtc/android/chess/engine/UCIEngine;->access$100(Ljwtc/android/chess/engine/UCIEngine;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    .line 152
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    .line 153
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v8

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " move "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v6, v8}, Ljwtc/chess/Move;->makeMove(II)I

    move-result v4

    .line 157
    iget-object v5, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-virtual {v5, v4}, Ljwtc/android/chess/engine/UCIEngine;->sendMoveMessageFromThread(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x0

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 167
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-virtual {v2}, Ljwtc/android/chess/engine/UCIEngine;->sendErrorMessageFromThread()V

    .line 169
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-static {v2}, Ljwtc/android/chess/engine/UCIEngine;->access$200(Ljwtc/android/chess/engine/UCIEngine;)Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 170
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    invoke-static {v2}, Ljwtc/android/chess/engine/UCIEngine;->access$200(Ljwtc/android/chess/engine/UCIEngine;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 171
    iget-object v2, p0, Ljwtc/android/chess/engine/UCIEngine$1;->this$0:Ljwtc/android/chess/engine/UCIEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljwtc/android/chess/engine/UCIEngine;->access$202(Ljwtc/android/chess/engine/UCIEngine;Ljava/lang/Process;)Ljava/lang/Process;

    .line 173
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
