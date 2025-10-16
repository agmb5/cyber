.class public Lcom/badlogic/gdx/utils/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Values;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[F

.field private values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field zeroValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    .line 92
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 93
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 94
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v0, p2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    .line 97
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 98
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 108
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return-void
.end method

.method private locateKey(I)I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 133
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    .line 134
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 133
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private putResize(IF)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 200
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    .line 201
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 202
    aput p1, v0, v1

    .line 203
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 200
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 369
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 370
    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v1, v1

    .line 371
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 374
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 376
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 377
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 379
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 381
    aget v3, v1, p1

    if-eqz v3, :cond_0

    .line 382
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 305
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 307
    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 308
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 300
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 301
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 334
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return p1

    .line 335
    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(F)Z
    .locals 5

    .line 314
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 316
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 317
    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 318
    aget v4, v0, v3

    if-eqz v4, :cond_1

    aget v4, v2, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(FF)Z
    .locals 5

    .line 325
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 327
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 328
    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 329
    aget v4, v0, v3

    if-eqz v4, :cond_1

    aget v4, v2, v3

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
    .locals 3

    .line 462
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    if-nez v0, :cond_1

    .line 464
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 465
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 401
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 402
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 403
    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 404
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    .line 406
    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    return v2

    .line 408
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 409
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 410
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    .line 411
    aget v6, v1, v5

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    .line 413
    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v8

    cmpl-float v7, v8, v7

    if-nez v7, :cond_5

    .line 414
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v6

    if-nez v6, :cond_5

    return v2

    .line 415
    :cond_5
    aget v6, v3, v5

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public findKey(FFI)I
    .locals 4

    .line 352
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 355
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 356
    aget v3, v0, v2

    if-eqz v3, :cond_1

    aget v3, v1, v2

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_1

    aget p1, v0, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public findKey(FI)I
    .locals 4

    .line 341
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 344
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 345
    aget v3, v0, v2

    if-eqz v3, :cond_1

    aget v3, v1, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    aget p1, v0, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public get(IF)F
    .locals 0

    if-nez p1, :cond_1

    .line 211
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    :cond_0
    return p2

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 213
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, p2, p1

    :cond_2
    return p2
.end method

.method public getAndIncrement(IFF)F
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 220
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    .line 221
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    add-float/2addr p3, p2

    .line 222
    iput p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 223
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return p2

    .line 226
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    add-float/2addr p3, p1

    .line 227
    iput p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return p1

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, p1, v1

    .line 233
    aget v0, p1, v1

    add-float/2addr v0, p3

    aput v0, p1, v1

    return p2

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 238
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    add-float/2addr p3, p2

    aput p3, p1, v1

    .line 239
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p3, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return p2
.end method

.method public hashCode()I
    .locals 7

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 389
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 391
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    const/4 v3, 0x0

    .line 392
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 393
    aget v5, v1, v3

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    .line 394
    aget v6, v2, v3

    invoke-static {v6}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
    .locals 3

    .line 506
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    if-nez v0, :cond_1

    .line 508
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 509
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 275
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    .line 126
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(IFF)F
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 164
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 165
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 166
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p2, :cond_0

    .line 167
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 168
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return p3

    :cond_0
    return p1

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p3, p1, v1

    .line 176
    aput p2, p1, v1

    return p3

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 181
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    .line 182
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return p3
.end method

.method public put(IF)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 142
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 143
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    .line 144
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 145
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    return-void

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 155
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 156
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    .line 157
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 5

    .line 187
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->ensureCapacity(I)V

    .line 188
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .line 189
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 190
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 191
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 192
    aget v3, v0, v1

    if-eqz v3, :cond_1

    .line 193
    aget v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(IF)F
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 247
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    return p2

    .line 248
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 249
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 250
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return p1

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_2

    return p2

    .line 255
    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 256
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 257
    aget v2, v1, p1

    .line 258
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 259
    aget v5, p2, v4

    if-eqz v5, :cond_4

    .line 260
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_3

    .line 262
    aput v5, p2, p1

    .line 263
    aget v5, v1, v4

    aput v5, v1, p1

    move p1, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_4
    aput v0, p2, p1

    .line 269
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return v2
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_0
    return-void

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 426
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 427
    array-length v3, v1

    .line 428
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 429
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 433
    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    .line 442
    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    .line 444
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .locals 3

    .line 484
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 487
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0
.end method
