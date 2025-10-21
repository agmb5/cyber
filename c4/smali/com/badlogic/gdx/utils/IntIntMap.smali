.class public Lcom/badlogic/gdx/utils/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntIntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntIntMap$Values;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[I

.field private values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field zeroValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 88
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    .line 90
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 91
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v0, p2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 95
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 96
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    return-void

    .line 87
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 4

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 102
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 106
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return-void
.end method

.method private locateKey(I)I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 131
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 132
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

    .line 131
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private putResize(II)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 197
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 198
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 199
    aput p1, v0, v1

    .line 200
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 197
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 343
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 344
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v1, v1

    .line 345
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 348
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 350
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 351
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 353
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 355
    aget v3, v1, p1

    if-eqz v3, :cond_0

    .line 356
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 301
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 302
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 294
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 295
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 317
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return p1

    .line 318
    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(I)Z
    .locals 5

    .line 308
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_0

    return v1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 311
    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 312
    aget v4, v0, v3

    if-eqz v4, :cond_1

    aget v4, v2, v3

    if-ne v4, p1, :cond_1

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

    .line 337
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;
    .locals 3

    .line 436
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    if-nez v0, :cond_1

    .line 438
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 439
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 375
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 376
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap;

    .line 377
    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 378
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    .line 380
    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-eq v1, v3, :cond_4

    return v2

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 383
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 384
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    .line 385
    aget v6, v1, v5

    if-eqz v6, :cond_6

    .line 387
    invoke-virtual {p1, v6, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v7

    if-nez v7, :cond_5

    .line 388
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v6

    if-nez v6, :cond_5

    return v2

    .line 389
    :cond_5
    aget v6, v3, v5

    if-eq v7, v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public findKey(II)I
    .locals 5

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 326
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 327
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 328
    aget v3, v0, v2

    if-eqz v3, :cond_1

    .line 329
    aget v4, v1, v2

    if-ne v4, p1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public get(II)I
    .locals 0

    if-nez p1, :cond_1

    .line 207
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    :cond_0
    return p2

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 209
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p2, p2, p1

    :cond_2
    return p2
.end method

.method public getAndIncrement(III)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 216
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    .line 217
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    add-int/2addr p3, p2

    .line 218
    iput p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 219
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return p2

    .line 222
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr p3, p1

    .line 223
    iput p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return p1

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p2, p1, v1

    .line 229
    aget v0, p1, v1

    add-int/2addr v0, p3

    aput v0, p1, v1

    return p2

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 233
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 234
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    add-int/2addr p3, p2

    aput p3, p1, v1

    .line 235
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt p1, p3, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_3
    return p2
.end method

.method public hashCode()I
    .locals 7

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 363
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v0, v1

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    const/4 v3, 0x0

    .line 366
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 367
    aget v5, v1, v3

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    .line 368
    aget v6, v2, v3

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

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;
    .locals 3

    .line 480
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 483
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

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

    .line 124
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(III)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 161
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 162
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 163
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p2, :cond_0

    .line 164
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 165
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return p3

    :cond_0
    return p1

    .line 170
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p3, p1, v1

    .line 173
    aput p2, p1, v1

    return p3

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 177
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 178
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    .line 179
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_3
    return p3
.end method

.method public put(II)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 140
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 141
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    .line 142
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 143
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 153
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 154
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    .line 155
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_3
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 5

    .line 184
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    .line 185
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 186
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 187
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 188
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 189
    aget v3, v0, v1

    if-eqz v3, :cond_1

    .line 190
    aget v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(II)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 242
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    return p2

    .line 243
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 244
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 245
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return p1

    .line 248
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_2

    return p2

    .line 250
    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 251
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 252
    aget v2, v1, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 253
    aget v5, p2, v4

    if-eqz v5, :cond_4

    .line 254
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_3

    .line 256
    aput v5, p2, p1

    .line 257
    aget v5, v1, v4

    aput v5, v1, p1

    move p1, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_4
    aput v0, p2, p1

    .line 263
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return v2
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_0
    return-void

    .line 281
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

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 400
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 401
    array-length v3, v1

    .line 402
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 403
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 407
    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    .line 416
    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    .line 418
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/IntIntMap$Values;
    .locals 3

    .line 458
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 461
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0
.end method
