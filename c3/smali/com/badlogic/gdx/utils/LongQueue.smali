.class public Lcom/badlogic/gdx/utils/LongQueue;
.super Ljava/lang/Object;
.source "LongQueue.java"


# instance fields
.field protected head:I

.field public size:I

.field protected tail:I

.field protected values:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 40
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 46
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    return-void
.end method


# virtual methods
.method public addFirst(J)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 70
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 71
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 75
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 78
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 80
    :cond_1
    aput-wide p1, v0, v1

    .line 82
    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 83
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public addLast(J)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 53
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 54
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 58
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    aput-wide p1, v0, v1

    .line 59
    array-length p1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 62
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 273
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 276
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/2addr v0, p1

    .line 90
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    array-length p1, p1

    if-ge p1, v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 332
    instance-of v2, p1, Lcom/badlogic/gdx/utils/LongQueue;

    if-nez v2, :cond_1

    goto :goto_1

    .line 334
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/LongQueue;

    .line 335
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 337
    iget v3, p1, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eq v3, v2, :cond_2

    return v1

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 340
    array-length v4, v3

    .line 341
    iget-object v5, p1, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 342
    array-length v6, v5

    .line 344
    iget v7, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 345
    iget p1, p1, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_6

    .line 347
    aget-wide v9, v3, v7

    aget-wide v11, v5, p1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_3

    return v1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-ne p1, v6, :cond_5

    const/4 p1, 0x0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public first()J
    .locals 3

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 233
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)J
    .locals 3

    if-ltz p1, :cond_2

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 264
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/2addr v1, p1

    .line 265
    array-length p1, v0

    if-lt v1, p1, :cond_0

    .line 266
    array-length p1, v0

    sub-int/2addr v1, p1

    .line 268
    :cond_0
    aget-wide v1, v0, v1

    return-wide v1

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 11

    .line 312
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 313
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 314
    array-length v2, v1

    .line 315
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 319
    aget-wide v7, v1, v3

    const/16 v9, 0x20

    ushr-long v9, v7, v9

    xor-long/2addr v7, v9

    long-to-int v8, v7

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public indexOf(J)I
    .locals 9

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 164
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    if-ge v2, v3, :cond_2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_6

    .line 167
    aget-wide v5, v0, v4

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    sub-int/2addr v4, v2

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_2
    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    .line 170
    aget-wide v6, v0, v5

    cmp-long v8, v6, p1

    if-nez v8, :cond_3

    sub-int/2addr v5, v2

    return v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 172
    aget-wide v5, v0, v4

    cmp-long v7, v5, p1

    if-nez v7, :cond_5

    array-length p1, v0

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 223
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()J
    .locals 3

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 248
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 251
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 253
    :cond_0
    aget-wide v1, v0, v1

    return-wide v1

    .line 245
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 218
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFirst()J
    .locals 5

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 128
    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 129
    array-length v1, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 132
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    .line 122
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)J
    .locals 5

    if-ltz p1, :cond_4

    .line 189
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 192
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/2addr p1, v1

    if-ge v1, v2, :cond_0

    .line 196
    aget-wide v3, v0, p1

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v2, p1

    .line 197
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    goto :goto_0

    .line 199
    :cond_0
    array-length v3, v0

    if-lt p1, v3, :cond_1

    .line 200
    array-length v1, v0

    sub-int/2addr p1, v1

    .line 201
    aget-wide v3, v0, p1

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v2, p1

    .line 202
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    goto :goto_0

    .line 205
    :cond_1
    aget-wide v3, v0, p1

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr p1, v1

    .line 206
    invoke-static {v0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 208
    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 209
    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 212
    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLast()J
    .locals 5

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 147
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 150
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 152
    :cond_0
    aget-wide v3, v1, v2

    .line 153
    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 v0, v0, -0x1

    .line 154
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    .line 143
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(J)Z
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongQueue;->indexOf(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/LongQueue;->removeIndex(I)J

    const/4 p1, 0x1

    return p1
.end method

.method protected resize(I)V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 98
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 99
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 101
    new-array p1, p1, [J

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    .line 104
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 105
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v4, :cond_1

    .line 107
    array-length v4, v0

    sub-int/2addr v4, v1

    .line 108
    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v0, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 112
    iput v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 113
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 285
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 286
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 288
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v4, 0x5b

    .line 289
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 291
    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    const-string v4, ", "

    .line 292
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 294
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 295
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 301
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 302
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 304
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 305
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 306
    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    .line 307
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
