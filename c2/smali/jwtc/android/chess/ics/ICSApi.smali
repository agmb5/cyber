.class public Ljwtc/android/chess/ics/ICSApi;
.super Ljwtc/android/chess/services/GameApi;
.source "ICSApi.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GameApi"

.field public static final VIEW_EXAMINE:I = 0x3

.field public static final VIEW_NONE:I = 0x0

.field public static final VIEW_OBSERVE:I = 0x2

.field public static final VIEW_PLAY:I = 0x1


# instance fields
.field private blackPlayer:Ljava/lang/String;

.field private blackRemaining:I

.field private gameNum:I

.field private iIncrement:I

.field private iTime:I

.field private lastMove:Ljava/lang/String;

.field private lastTo:I

.field private myTurn:I

.field private opponent:Ljava/lang/String;

.field private playerMe:Ljava/lang/String;

.field private turn:I

.field private viewMode:I

.field private whitePlayer:Ljava/lang/String;

.field private whiteRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljwtc/android/chess/services/GameApi;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    return-void
.end method


# virtual methods
.method public getBlackRemaining()J
    .locals 4

    .line 244
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->blackRemaining:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getIncrement()J
    .locals 4

    .line 236
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->iIncrement:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getLastMove()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTo()I
    .locals 1

    .line 260
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    return v0
.end method

.method public getMyPlayerName(I)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSApi;->playerMe:Ljava/lang/String;

    return-object p1
.end method

.method public getMyTurn()I
    .locals 1

    .line 252
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->myTurn:I

    return v0
.end method

.method public getOpponentPlayerName(I)Ljava/lang/String;
    .locals 0

    .line 228
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSApi;->opponent:Ljava/lang/String;

    return-object p1
.end method

.method public getTime()J
    .locals 4

    .line 232
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->iTime:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getTurn()I
    .locals 1

    .line 256
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->turn:I

    return v0
.end method

.method public getViewMode()I
    .locals 1

    .line 218
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    return v0
.end method

.method public getWhiteRemaining()J
    .locals 4

    .line 240
    iget v0, p0, Ljwtc/android/chess/ics/ICSApi;->whiteRemaining:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public declared-synchronized parseGame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    const/4 v3, 0x0

    .line 34
    :try_start_0
    iget-object v4, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v4}, Ljwtc/chess/JNI;->reset()V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    const/16 v7, 0x40

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v5, v7, :cond_11

    .line 39
    rem-int/lit8 v7, v5, 0x8

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v7, v6, 0x1

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x2d

    if-eq v6, v11, :cond_10

    const/16 v11, 0x6b

    if-eq v6, v11, :cond_e

    const/16 v12, 0x4b

    if-ne v6, v12, :cond_1

    goto :goto_7

    :cond_1
    const/16 v11, 0x71

    if-eq v6, v11, :cond_d

    const/16 v12, 0x51

    if-ne v6, v12, :cond_2

    goto :goto_6

    :cond_2
    const/16 v11, 0x72

    if-eq v6, v11, :cond_c

    const/16 v12, 0x52

    if-ne v6, v12, :cond_3

    goto :goto_4

    :cond_3
    const/16 v8, 0x6e

    if-eq v6, v8, :cond_a

    const/16 v11, 0x4e

    if-ne v6, v11, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0x62

    if-eq v6, v8, :cond_8

    const/16 v11, 0x42

    if-ne v6, v11, :cond_5

    goto :goto_1

    :cond_5
    const/16 v8, 0x70

    if-eq v6, v8, :cond_6

    const/16 v9, 0x50

    if-ne v6, v9, :cond_10

    :cond_6
    if-ne v6, v8, :cond_7

    const/4 v10, 0x0

    :cond_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_8
    :goto_1
    if-ne v6, v8, :cond_9

    const/4 v10, 0x0

    :cond_9
    const/4 v8, 0x2

    goto :goto_8

    :cond_a
    :goto_2
    if-ne v6, v8, :cond_b

    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    const/4 v6, 0x1

    :goto_3
    move v10, v6

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    :goto_4
    if-ne v6, v11, :cond_f

    :goto_5
    const/4 v10, 0x0

    goto :goto_8

    :cond_d
    :goto_6
    const/4 v8, 0x4

    if-ne v6, v11, :cond_f

    goto :goto_5

    :cond_e
    :goto_7
    const/4 v8, 0x5

    if-ne v6, v11, :cond_f

    goto :goto_5

    .line 64
    :cond_f
    :goto_8
    iget-object v6, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v6, v5, v8, v10}, Ljwtc/chess/JNI;->putPiece(III)V

    :cond_10
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_0

    :cond_11
    add-int/2addr v6, v10

    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 74
    iput v10, v1, Ljwtc/android/chess/ics/ICSApi;->turn:I

    const-string v6, "B"

    .line 75
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, v3}, Ljwtc/chess/JNI;->setTurn(I)V

    .line 77
    iput v3, v1, Ljwtc/android/chess/ics/ICSApi;->turn:I

    goto :goto_9

    .line 79
    :cond_12
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, v10}, Ljwtc/chess/JNI;->setTurn(I)V

    .line 82
    :goto_9
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 84
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 85
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 86
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 87
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-ltz v0, :cond_14

    .line 91
    iget v6, v1, Ljwtc/android/chess/ics/ICSApi;->turn:I

    if-ne v6, v10, :cond_13

    add-int/lit8 v0, v0, 0x10

    goto :goto_a

    :cond_13
    add-int/lit8 v0, v0, 0x28

    :goto_a
    const-string v6, "parseGame"

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EP: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v0

    goto :goto_b

    :cond_14
    const/16 v16, -0x1

    .line 100
    :goto_b
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->gameNum:I

    .line 103
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->whitePlayer:Ljava/lang/String;

    .line 104
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackPlayer:Ljava/lang/String;

    .line 107
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_19

    const/4 v6, -0x2

    if-ne v0, v6, :cond_15

    goto :goto_d

    :cond_15
    if-eq v0, v10, :cond_18

    if-ne v0, v4, :cond_16

    goto :goto_c

    :cond_16
    if-nez v0, :cond_17

    .line 123
    iput v9, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    goto :goto_e

    .line 125
    :cond_17
    iput v3, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    goto :goto_e

    .line 121
    :cond_18
    :goto_c
    iput v10, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    goto :goto_e

    .line 119
    :cond_19
    :goto_d
    iput v8, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    .line 128
    :goto_e
    iget v0, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    if-ne v0, v10, :cond_1b

    .line 129
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackPlayer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 130
    iput v3, v1, Ljwtc/android/chess/ics/ICSApi;->myTurn:I

    .line 131
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackPlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->playerMe:Ljava/lang/String;

    .line 132
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->whitePlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->opponent:Ljava/lang/String;

    goto :goto_f

    .line 133
    :cond_1a
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->whitePlayer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 134
    iput v10, v1, Ljwtc/android/chess/ics/ICSApi;->myTurn:I

    .line 135
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->whitePlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->playerMe:Ljava/lang/String;

    .line 136
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackPlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->opponent:Ljava/lang/String;

    goto :goto_f

    .line 139
    :cond_1b
    iput v10, v1, Ljwtc/android/chess/ics/ICSApi;->myTurn:I

    .line 140
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->whitePlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->playerMe:Ljava/lang/String;

    .line 141
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackPlayer:Ljava/lang/String;

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->opponent:Ljava/lang/String;

    :cond_1c
    :goto_f
    const-string v0, "GameApi"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewMode "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Ljwtc/android/chess/ics/ICSApi;->viewMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->iTime:I

    .line 147
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->iIncrement:I

    .line 148
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->whiteRemaining:I

    .line 151
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->blackRemaining:I

    .line 152
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 153
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 154
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 155
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    const-string v2, "+"

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_10

    .line 159
    :cond_1d
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    :goto_10
    iput v4, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    .line 167
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    const-string v2, "o-o"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 168
    iget v0, v1, Ljwtc/android/chess/ics/ICSApi;->turn:I

    if-ne v0, v10, :cond_1e

    const-string v0, "g8"

    .line 169
    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    goto/16 :goto_11

    :cond_1e
    const-string v0, "g1"

    .line 171
    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    goto/16 :goto_11

    .line 172
    :cond_1f
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    const-string v2, "o-o-o"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 173
    iget v0, v1, Ljwtc/android/chess/ics/ICSApi;->turn:I

    if-ne v0, v10, :cond_20

    const-string v0, "c8"

    .line 174
    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    goto :goto_11

    :cond_20
    const-string v0, "c1"

    .line 176
    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    .line 181
    :cond_21
    :try_start_1
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    const-string v2, "(#|=.)"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v9, :cond_22

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    goto :goto_11

    .line 185
    :cond_22
    iput v4, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    const-string v2, "GameApi"

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse move: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_11

    .line 190
    :catch_0
    :try_start_2
    iput v4, v1, Ljwtc/android/chess/ics/ICSApi;->lastTo:I

    const-string v0, "GameApi"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse move: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljwtc/android/chess/ics/ICSApi;->lastMove:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_11
    iget-object v11, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual/range {v11 .. v17}, Ljwtc/chess/JNI;->setCastlingsEPAnd50(IIIIII)V

    .line 198
    iget-object v0, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->commitBoard()V

    const-string v0, "GameApi"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v4}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljwtc/android/chess/ics/ICSApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v4}, Ljwtc/chess/JNI;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual/range {p0 .. p0}, Ljwtc/android/chess/ics/ICSApi;->dispatchState()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "parseGame"

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljwtc/android/chess/ics/ICSApi;->dispatchState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    monitor-exit p0

    return v3

    :goto_12
    monitor-exit p0

    throw v0
.end method
