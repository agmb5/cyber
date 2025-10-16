.class public Ljwtc/chess/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# static fields
.field private static volatile instance:Ljwtc/chess/JNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "chess-jni"

    .line 426
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljwtc/chess/JNI;
    .locals 2

    .line 16
    sget-object v0, Ljwtc/chess/JNI;->instance:Ljwtc/chess/JNI;

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    const-class v0, Ljwtc/chess/JNI;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Ljwtc/chess/JNI;->instance:Ljwtc/chess/JNI;

    if-nez v1, :cond_1

    .line 22
    new-instance v1, Ljwtc/chess/JNI;

    invoke-direct {v1}, Ljwtc/chess/JNI;-><init>()V

    sput-object v1, Ljwtc/chess/JNI;->instance:Ljwtc/chess/JNI;

    .line 24
    :cond_1
    sget-object v1, Ljwtc/chess/JNI;->instance:Ljwtc/chess/JNI;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public native commitBoard()V
.end method

.method public native destroy()V
.end method

.method public native doCastleMove(II)I
.end method

.method protected getAvailableCol(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 170
    :cond_0
    invoke-static {v1, v0}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v3

    .line 171
    invoke-virtual {p0, v3}, Ljwtc/chess/JNI;->isPosFree(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-gt v2, p1, :cond_2

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public native getBoardValue()I
.end method

.method public native getEvalCount()I
.end method

.method protected getFirstAvailableCol()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    :cond_0
    invoke-static {v1, v0}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v2

    .line 185
    invoke-virtual {p0, v2}, Ljwtc/chess/JNI;->isPosFree(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    return v1
.end method

.method public native getHashKey()J
.end method

.method public native getMove()I
.end method

.method public native getMoveArrayAt(I)I
.end method

.method public native getMoveArraySize()I
.end method

.method public native getMyMove()I
.end method

.method public native getMyMoveToString()Ljava/lang/String;
.end method

.method public native getNumBoard()I
.end method

.method public native getNumCaptured(II)I
.end method

.method public native getState()I
.end method

.method public native getTurn()I
.end method

.method public final initFEN(Ljava/lang/String;)Z
    .locals 13

    .line 73
    invoke-virtual {p0}, Ljwtc/chess/JNI;->reset()V

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    const-string v4, "Q"

    const-string v5, "q"

    const-string v6, "K"

    const-string v8, "k"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v1, v3, :cond_d

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    add-int/lit8 v3, v2, 0x1

    .line 80
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v12, 0x5

    if-eqz v8, :cond_0

    .line 82
    invoke-virtual {p0, v1, v12, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto/16 :goto_1

    .line 83
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    invoke-virtual {p0, v1, v12, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto/16 :goto_1

    .line 85
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_2

    .line 86
    invoke-virtual {p0, v1, v6, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto/16 :goto_1

    .line 87
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    invoke-virtual {p0, v1, v6, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto/16 :goto_1

    :cond_3
    const-string v4, "r"

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    invoke-virtual {p0, v1, v9, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_4
    const-string v4, "R"

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 92
    invoke-virtual {p0, v1, v9, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_5
    const-string v4, "b"

    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {p0, v1, v10, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_6
    const-string v4, "B"

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 96
    invoke-virtual {p0, v1, v10, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_7
    const-string v4, "n"

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 98
    invoke-virtual {p0, v1, v11, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_8
    const-string v4, "N"

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 100
    invoke-virtual {p0, v1, v11, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_9
    const-string v4, "p"

    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 102
    invoke-virtual {p0, v1, v7, v7}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_a
    const-string v4, "P"

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 104
    invoke-virtual {p0, v1, v7, v11}, Ljwtc/chess/JNI;->putPiece(III)V

    goto :goto_1

    :cond_b
    const-string v4, "/"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v11, 0x0

    goto :goto_1

    .line 108
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :goto_1
    add-int/2addr v1, v11

    move v2, v3

    goto/16 :goto_0

    :cond_d
    add-int/2addr v2, v11

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_16

    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    array-length v1, v0

    if-lez v1, :cond_16

    .line 118
    aget-object v1, v0, v7

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v12, 0x1

    goto :goto_2

    :cond_e
    const/4 v12, 0x0

    .line 123
    :goto_2
    array-length v1, v0

    if-le v1, v11, :cond_16

    .line 124
    aget-object v1, v0, v11

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v8, 0x1

    goto :goto_3

    :cond_f
    const/4 v8, 0x0

    .line 127
    :goto_3
    aget-object v1, v0, v11

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    const/4 v3, 0x1

    goto :goto_4

    :cond_10
    const/4 v3, 0x0

    .line 130
    :goto_4
    aget-object v1, v0, v11

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_11

    const/4 v5, 0x1

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    .line 133
    :goto_5
    aget-object v1, v0, v11

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    .line 137
    :goto_6
    array-length v4, v0

    if-le v4, v10, :cond_15

    .line 138
    aget-object v4, v0, v10

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 139
    aget-object v2, v0, v10

    invoke-static {v2}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v2

    .line 141
    :cond_13
    array-length v4, v0

    if-le v4, v9, :cond_14

    .line 142
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    move v6, v2

    goto :goto_8

    :cond_14
    move v6, v2

    goto :goto_7

    :cond_15
    const/4 v6, -0x1

    :goto_7
    const/4 v9, 0x0

    :goto_8
    move-object v0, p0

    move v2, v5

    move v4, v8

    move v5, v6

    move v6, v9

    .line 145
    invoke-virtual/range {v0 .. v6}, Ljwtc/chess/JNI;->setCastlingsEPAnd50(IIIIII)V

    .line 147
    invoke-virtual {p0, v12}, Ljwtc/chess/JNI;->setTurn(I)V

    .line 148
    invoke-virtual {p0}, Ljwtc/chess/JNI;->commitBoard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :catch_0
    :cond_16
    return v7
.end method

.method public initRandomFisher(I)I
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 208
    invoke-virtual/range {p0 .. p0}, Ljwtc/chess/JNI;->reset()V

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 210
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v9, 0x4

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v10, 0x5

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v11, 0x6

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    if-ltz v0, :cond_0

    .line 229
    rem-int/lit8 v4, v0, 0x4

    int-to-double v14, v0

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    .line 230
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v0, v14

    .line 232
    rem-int/lit8 v14, v0, 0x4

    move/from16 p1, v14

    int-to-double v13, v0

    div-double v13, v13, v16

    .line 233
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v0, v13

    .line 235
    rem-int/lit8 v13, v0, 0x6

    move/from16 v16, v13

    int-to-double v12, v0

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    div-double v12, v12, v17

    .line 236
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v0, v12

    .line 238
    rem-int/2addr v0, v1

    .line 240
    aget-object v12, v2, v0

    aget v12, v12, v5

    .line 241
    aget-object v2, v2, v0

    aget v2, v2, v6

    move/from16 v14, p1

    move v15, v12

    move/from16 v13, v16

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v16

    double-to-int v4, v12

    .line 246
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    mul-double v12, v12, v16

    double-to-int v0, v12

    .line 248
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    mul-double v12, v12, v16

    double-to-int v13, v12

    .line 250
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    mul-double v14, v16, v18

    double-to-int v14, v14

    .line 252
    aget-object v15, v2, v14

    aget v15, v15, v5

    .line 253
    aget-object v2, v2, v14

    aget v2, v2, v6

    move/from16 v20, v14

    move v14, v0

    move/from16 v0, v20

    :goto_0
    rsub-int/lit8 v16, v15, 0x3

    rsub-int/lit8 v17, v15, 0x4

    mul-int v16, v16, v17

    .line 257
    div-int/lit8 v16, v16, 0x2

    rsub-int/lit8 v16, v16, 0x5

    add-int v16, v16, v2

    mul-int/lit8 v16, v16, 0x60

    mul-int/lit8 v17, v13, 0x10

    add-int v16, v16, v17

    mul-int/lit8 v17, v14, 0x4

    add-int v16, v16, v17

    add-int v16, v16, v4

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bw "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Bb "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Q "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " n "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " N1 "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " N2 "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "Chess960"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bw col "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v4, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 264
    invoke-virtual {v7, v1, v3, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 265
    invoke-static {v4, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 266
    invoke-virtual {v7, v1, v3, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    mul-int/lit8 v14, v14, 0x2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bb col "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {v14, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 272
    invoke-virtual {v7, v1, v3, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 273
    invoke-static {v14, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 274
    invoke-virtual {v7, v1, v3, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 277
    invoke-virtual {v7, v13}, Ljwtc/chess/JNI;->getAvailableCol(I)I

    move-result v1

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Q col "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v1, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v3

    .line 280
    invoke-virtual {v7, v3, v9, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 281
    invoke-static {v1, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 282
    invoke-virtual {v7, v1, v9, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 285
    invoke-virtual {v7, v15}, Ljwtc/chess/JNI;->getAvailableCol(I)I

    move-result v1

    .line 286
    invoke-virtual {v7, v2}, Ljwtc/chess/JNI;->getAvailableCol(I)I

    move-result v2

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N1 col "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {v1, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 289
    invoke-virtual {v7, v0, v6, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 290
    invoke-static {v1, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 291
    invoke-virtual {v7, v0, v6, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 294
    invoke-static {v2, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 295
    invoke-virtual {v7, v0, v6, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 296
    invoke-static {v2, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 297
    invoke-virtual {v7, v0, v6, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Ljwtc/chess/JNI;->getFirstAvailableCol()I

    move-result v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R1 col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v0, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 303
    invoke-virtual {v7, v1, v8, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 304
    invoke-static {v0, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 305
    invoke-virtual {v7, v0, v8, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Ljwtc/chess/JNI;->getFirstAvailableCol()I

    move-result v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "K col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {v0, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    const/4 v2, 0x5

    .line 311
    invoke-virtual {v7, v1, v2, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 312
    invoke-static {v0, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 313
    invoke-virtual {v7, v0, v2, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Ljwtc/chess/JNI;->getFirstAvailableCol()I

    move-result v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R2 col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {v0, v5}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v1

    .line 318
    invoke-virtual {v7, v1, v8, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 319
    invoke-static {v0, v11}, Ljwtc/chess/Pos;->fromColAndRow(II)I

    move-result v0

    .line 320
    invoke-virtual {v7, v0, v8, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x8

    .line 323
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x9

    .line 324
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xa

    .line 325
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xb

    .line 326
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xc

    .line 327
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xd

    .line 328
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xe

    .line 329
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0xf

    .line 330
    invoke-virtual {v7, v0, v5, v5}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x30

    .line 332
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x31

    .line 333
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x32

    .line 334
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x33

    .line 335
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x34

    .line 336
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x35

    .line 337
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x36

    .line 338
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v0, 0x37

    .line 339
    invoke-virtual {v7, v0, v5, v6}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 341
    invoke-virtual/range {v0 .. v6}, Ljwtc/chess/JNI;->setCastlingsEPAnd50(IIIIII)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Ljwtc/chess/JNI;->commitBoard()V

    return v16

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public native interrupt()V
.end method

.method public native isAmbiguousCastle(II)I
.end method

.method public native isEnded()I
.end method

.method public native isInited()I
.end method

.method public native isLegalPosition()I
.end method

.method protected isPosFree(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 164
    invoke-virtual {p0, v2, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result p1

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public native loadDB(Ljava/lang/String;I)V
.end method

.method public native move(I)I
.end method

.method public newGame()V
    .locals 10

    .line 29
    invoke-virtual {p0}, Ljwtc/chess/JNI;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 30
    invoke-virtual {p0, v0, v1, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, v2, v2, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v3, 0x2

    .line 32
    invoke-virtual {p0, v3, v3, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v4, 0x4

    .line 33
    invoke-virtual {p0, v1, v4, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v5, 0x5

    .line 34
    invoke-virtual {p0, v4, v5, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 35
    invoke-virtual {p0, v5, v3, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v6, 0x6

    .line 36
    invoke-virtual {p0, v6, v2, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v6, 0x7

    .line 37
    invoke-virtual {p0, v6, v1, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x8

    .line 38
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x9

    .line 39
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xa

    .line 40
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xb

    .line 41
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xc

    .line 42
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xd

    .line 43
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xe

    .line 44
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0xf

    .line 45
    invoke-virtual {p0, v6, v0, v0}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x38

    .line 47
    invoke-virtual {p0, v6, v1, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x39

    .line 48
    invoke-virtual {p0, v6, v2, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x3a

    .line 49
    invoke-virtual {p0, v6, v3, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v6, 0x3b

    .line 50
    invoke-virtual {p0, v6, v4, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v4, 0x3c

    .line 51
    invoke-virtual {p0, v4, v5, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v4, 0x3d

    .line 52
    invoke-virtual {p0, v4, v3, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v3, 0x3e

    .line 53
    invoke-virtual {p0, v3, v2, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v3, 0x3f

    .line 54
    invoke-virtual {p0, v3, v1, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x30

    .line 55
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x31

    .line 56
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x32

    .line 57
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x33

    .line 58
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x34

    .line 59
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x35

    .line 60
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x36

    .line 61
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/16 v1, 0x37

    .line 62
    invoke-virtual {p0, v1, v0, v2}, Ljwtc/chess/JNI;->putPiece(III)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v3, p0

    .line 64
    invoke-virtual/range {v3 .. v9}, Ljwtc/chess/JNI;->setCastlingsEPAnd50(IIIIII)V

    .line 66
    invoke-virtual {p0}, Ljwtc/chess/JNI;->commitBoard()V

    return-void
.end method

.method public native peekSearchBestMove(I)I
.end method

.method public native peekSearchBestValue()I
.end method

.method public native peekSearchDepth()I
.end method

.method public native peekSearchDone()I
.end method

.method public native pieceAt(II)I
.end method

.method public native putPiece(III)V
.end method

.method public native removePiece(II)V
.end method

.method public native requestMove(II)I
.end method

.method public native reset()V
.end method

.method public native searchDepth(I)V
.end method

.method public native searchMove(I)V
.end method

.method public native setCastlingsEPAnd50(IIIIII)V
.end method

.method public native setPromo(I)V
.end method

.method public native setTurn(I)V
.end method

.method public native toFEN()Ljava/lang/String;
.end method

.method public native undo()V
.end method
