.class public Lcom/badlogic/gdx/utils/FloatArray;
.super Ljava/lang/Object;
.source "FloatArray.java"


# instance fields
.field public items:[F

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 55
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 56
    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    .line 46
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-void
.end method

.method public constructor <init>(Z[FII)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 72
    iget-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 62
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(Z[FII)V

    return-void
.end method

.method public static varargs with([F)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 1

    .line 447
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>([F)V

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 77
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public add(FF)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 83
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v0

    .line 84
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 85
    aput p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 86
    iput v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void
.end method

.method public add(FFF)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 91
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v0

    .line 92
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 93
    aput p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 94
    aput p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    .line 95
    iput v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void
.end method

.method public add(FFFF)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 100
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v0

    .line 101
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 102
    aput p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 103
    aput p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 104
    aput p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 105
    iput v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 2

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V
    .locals 3

    add-int v0, p2, p3

    .line 113
    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-gt v0, v1, :cond_0

    .line 115
    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([F)V
    .locals 2

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    return-void
.end method

.method public addAll([FII)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 124
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/2addr v1, p3

    .line 125
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v0

    .line 126
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void
.end method

.method public contains(F)Z
    .locals 4

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 195
    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 197
    aget v0, v2, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)[F
    .locals 3

    if-ltz p1, :cond_1

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/2addr v0, p1

    .line 317
    iget-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object p1

    .line 315
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 392
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 393
    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v1, :cond_2

    return v2

    .line 394
    :cond_2
    check-cast p1, Lcom/badlogic/gdx/utils/FloatArray;

    .line 395
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-nez v1, :cond_3

    return v2

    .line 396
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 397
    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eq v1, v3, :cond_4

    return v2

    .line 398
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 400
    aget v5, v3, v4

    aget v6, p1, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;F)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 408
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/FloatArray;

    .line 409
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 410
    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 411
    :cond_2
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-nez v3, :cond_3

    return v2

    .line 412
    :cond_3
    iget-boolean v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-nez v3, :cond_4

    return v2

    .line 413
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 415
    aget v5, v3, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p2

    if-lez v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public first()F
    .locals 2

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)F
    .locals 3

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget p1, v0, p1

    return p1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 381
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    .line 384
    iget v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 385
    aget v4, v0, v1

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public incr(F)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 147
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    aget v3, v0, v2

    add-float/2addr v3, p1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public incr(IF)V
    .locals 2

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    return-void

    .line 141
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexOf(F)I
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 203
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 204
    aget v3, v0, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public insert(IF)V
    .locals 3

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-gt p1, v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 165
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v1

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 167
    iget v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 169
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 170
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 171
    aput p2, v1, p1

    return-void

    .line 163
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public insertRange(II)V
    .locals 4

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-gt p1, v0, :cond_1

    add-int/2addr v0, p2

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr p2, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void

    .line 177
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(F)I
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 210
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 211
    aget v2, v0, v1

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public mul(F)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 158
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 159
    aget v3, v0, v2

    mul-float v3, v3, p1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mul(IF)V
    .locals 2

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    return-void

    .line 152
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public notEmpty()Z
    .locals 1

    .line 291
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()F
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()F
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public random()F
    .locals 3

    .line 370
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 9

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 259
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 260
    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x0

    move v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 261
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 263
    aget v8, v1, v7

    cmpl-float v8, v6, v8

    if-nez v8, :cond_0

    .line 264
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/FloatArray;->removeIndex(I)F

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public removeIndex(I)F
    .locals 4

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 230
    aget v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 231
    iput v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 232
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    .line 233
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 235
    :cond_0
    aget v0, v1, v0

    aput v0, v1, p1

    :goto_0
    return v2

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .locals 4

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p2, v0, :cond_2

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    .line 245
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 246
    iget-object p2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 248
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 249
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    return-void

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(F)Z
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 217
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 218
    aget v4, v0, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    .line 219
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->removeIndex(I)F

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected resize(I)[F
    .locals 3

    .line 331
    new-array v0, p1, [F

    .line 332
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 333
    iget v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object v0
.end method

.method public reverse()V
    .locals 7

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 344
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    sub-int v4, v2, v3

    .line 346
    aget v5, v0, v3

    .line 347
    aget v6, v0, v4

    aput v6, v0, v3

    .line 348
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(IF)V
    .locals 2

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aput p2, v0, p1

    return-void

    .line 136
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSize(I)[F
    .locals 3

    if-ltz p1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    .line 326
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 327
    iget-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object p1

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[F
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->resize(I)[F

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 354
    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 355
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 356
    aget v3, v0, v1

    .line 357
    aget v4, v0, v2

    aput v4, v0, v1

    .line 358
    aput v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([FII)V

    return-void
.end method

.method public swap(II)V
    .locals 3

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 188
    aget v1, v0, p1

    .line 189
    aget v2, v0, p2

    aput v2, v0, p1

    .line 190
    aput v1, v0, p2

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[F
    .locals 4

    .line 375
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    new-array v1, v0, [F

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 422
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 423
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 424
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 425
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 426
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 427
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 429
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 430
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 434
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 436
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 437
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 438
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v3, :cond_1

    .line 439
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 440
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .locals 1

    .line 365
    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    :cond_0
    return-void
.end method
