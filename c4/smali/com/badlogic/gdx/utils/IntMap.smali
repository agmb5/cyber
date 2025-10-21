.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values1:Lcom/badlogic/gdx/utils/IntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

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
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 92
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 93
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 94
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    int-to-long v0, p2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    .line 97
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 98
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 107
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 108
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    return-void
.end method

.method private locateKey(I)I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 133
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

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
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 177
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

    move-result v1

    .line 178
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 179
    aput p1, v0, v1

    .line 180
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 177
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 332
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 333
    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    int-to-long v1, v1

    .line 334
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 337
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 339
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 340
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 342
    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 344
    aget v3, v1, p1

    if-eqz v3, :cond_0

    .line 345
    aget-object v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 266
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 268
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 251
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 256
    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 257
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 259
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 296
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    return p1

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 278
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez p1, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 280
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_8

    .line 281
    aget v2, p1, p2

    if-eqz v2, :cond_1

    aget-object v2, v0, p2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 283
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return v1

    .line 284
    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_8

    .line 285
    aget-object v2, v0, p2

    if-ne v2, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 287
    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 288
    :cond_6
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_8

    .line 289
    aget-object v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 453
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 456
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 368
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 369
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    .line 370
    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 371
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    .line 373
    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    .line 376
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 379
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 380
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 381
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 382
    aget v6, v1, v5

    if-eqz v6, :cond_7

    .line 384
    aget-object v7, v3, v5

    if-nez v7, :cond_6

    .line 386
    sget-object v7, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    return v2

    .line 388
    :cond_6
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 398
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 399
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    .line 400
    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 401
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v3, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    return v2

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 405
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 406
    aget v6, v1, v5

    if-eqz v6, :cond_5

    .line 407
    aget-object v7, v3, v5

    sget-object v8, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v8}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v7, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 307
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez p1, :cond_0

    return v1

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 309
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_8

    .line 310
    aget v1, p1, p2

    if-eqz v1, :cond_1

    aget-object v1, v0, p2

    if-nez v1, :cond_1

    aget p1, p1, p2

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 312
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return v1

    .line 313
    :cond_3
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_8

    .line 314
    aget-object v1, v0, p2

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p1, p1, p2

    return p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 316
    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 317
    :cond_6
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_8

    .line 318
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p1, p1, p2

    return p1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_8
    return p3
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 187
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :cond_2
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 193
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    :cond_0
    return-object p2

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 195
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, p2, p1

    :cond_2
    return-object p2
.end method

.method public hashCode()I
    .locals 6

    .line 351
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 352
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 354
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 355
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 356
    aget v5, v1, v3

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v0, v5

    .line 359
    aget-object v5, v2, v3

    if-eqz v5, :cond_1

    .line 360
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 3

    .line 497
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 500
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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
    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 144
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez p2, :cond_0

    .line 145
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 146
    iget p2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    :cond_0
    return-object p1

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v1

    .line 153
    aput-object p2, p1, v1

    return-object v0

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v2, v1

    .line 158
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 159
    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 164
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->ensureCapacity(I)V

    .line 165
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 167
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 168
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 169
    aget v3, v0, v1

    if-eqz v3, :cond_1

    .line 170
    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 201
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    return-object v1

    .line 202
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 203
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 204
    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 205
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    return-object p1

    .line 209
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_2

    return-object v1

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 212
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 213
    aget-object v4, v3, p1

    .line 214
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    add-int/lit8 v6, p1, 0x1

    :goto_0
    and-int/2addr v6, v5

    .line 215
    aget v7, v2, v6

    if-eqz v7, :cond_4

    .line 216
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

    move-result v8

    sub-int v9, v6, v8

    and-int/2addr v9, v5

    sub-int v8, p1, v8

    and-int/2addr v8, v5

    if-le v9, v8, :cond_3

    .line 218
    aput v7, v2, p1

    .line 219
    aget-object v7, v3, v6

    aput-object v7, v3, p1

    move p1, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_4
    aput v0, v2, p1

    .line 225
    aput-object v1, v3, p1

    .line 226
    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    return-object v4
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_0
    return-void

    .line 244
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

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 417
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 418
    array-length v3, v1

    .line 419
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 420
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 424
    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    .line 433
    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    .line 435
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 475
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 478
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0
.end method
