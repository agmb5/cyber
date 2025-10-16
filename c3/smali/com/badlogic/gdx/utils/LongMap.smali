.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$Values;,
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field keyTable:[J

.field private keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/LongMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/LongMap$Values;

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
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 91
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 93
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v0, p2

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    .line 96
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 97
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    return-void

    .line 88
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 107
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    return-void
.end method

.method private locateKey(J)I
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v1

    .line 133
    :goto_0
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 132
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private putResize(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v1

    .line 177
    :goto_0
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 178
    aput-wide p1, v0, v1

    .line 179
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 176
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 8

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    int-to-float v1, p1

    .line 331
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 332
    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    .line 333
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 336
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 338
    new-array v3, p1, [J

    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 339
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 341
    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 343
    aget-wide v3, v1, p1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 344
    aget-object v5, v2, p1

    invoke-direct {p0, v3, v4, v5}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 262
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 264
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 267
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 256
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 258
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    return-void
.end method

.method public containsKey(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 295
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    return p1

    .line 296
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

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
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 277
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez p1, :cond_0

    return v1

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 279
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_8

    .line 280
    aget-wide v2, p1, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    aget-object v2, v0, p2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 282
    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return v1

    .line 283
    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_8

    .line 284
    aget-object v2, v0, p2

    if-ne v2, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 286
    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 287
    :cond_6
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_8

    .line 288
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

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 452
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 455
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 367
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 368
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/LongMap;

    .line 369
    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 370
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    .line 372
    iget-object v1, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    .line 375
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 378
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 379
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 380
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 381
    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_7

    .line 383
    aget-object v8, v3, v5

    if-nez v8, :cond_6

    .line 385
    sget-object v8, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    return v2

    .line 387
    :cond_6
    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 397
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 398
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/LongMap;

    .line 399
    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 400
    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    .line 401
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iget-object v3, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    return v2

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 403
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 404
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 405
    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    .line 406
    aget-object v8, v3, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7, v9}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v8, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez p1, :cond_2

    .line 306
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-wide v1

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 308
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_8

    .line 309
    aget-wide v3, p1, p2

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    aget-object v3, v0, p2

    if-nez v3, :cond_1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 311
    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return-wide v1

    .line 312
    :cond_3
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_8

    .line 313
    aget-object v1, v0, p2

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p2, p1, p2

    return-wide p2

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 315
    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-wide v1

    .line 316
    :cond_6
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_8

    .line 317
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p2, p1, p2

    return-wide p2

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_8
    return-wide p3
.end method

.method public get(J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 186
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 187
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result p1

    if-ltz p1, :cond_2

    .line 188
    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, p2, p1

    :cond_2
    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 192
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    :cond_0
    return-object p3

    .line 193
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result p1

    if-ltz p1, :cond_2

    .line 194
    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p3, p2, p1

    :cond_2
    return-object p3
.end method

.method public hashCode()I
    .locals 11

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 351
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 353
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 354
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 355
    aget-wide v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    int-to-long v7, v0

    const-wide/16 v9, 0x1f

    mul-long v5, v5, v9

    add-long/2addr v7, v5

    long-to-int v0, v7

    .line 358
    aget-object v5, v2, v3

    if-eqz v5, :cond_1

    .line 359
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

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

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
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .locals 3

    .line 496
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_1

    .line 498
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    const-wide v0, -0x61c8864680b583ebL

    mul-long p1, p1, v0

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 141
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 142
    iput-object p3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 143
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez p2, :cond_0

    .line 144
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 145
    iget p2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    :cond_0
    return-object p1

    .line 149
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v1

    if-ltz v1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, p1, v1

    .line 152
    aput-object p3, p1, v1

    return-object p2

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v1

    .line 157
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, p1, v1

    .line 158
    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 163
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->ensureCapacity(I)V

    .line 164
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 166
    iget-object p1, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 167
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 168
    aget-wide v5, v0, v3

    cmp-long v7, v5, v1

    if-eqz v7, :cond_1

    .line 169
    aget-object v7, p1, v3

    invoke-virtual {p0, v5, v6, v7}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 200
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 202
    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 203
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 204
    iget p2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return-object p1

    .line 208
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result p1

    if-gez p1, :cond_2

    return-object v2

    .line 210
    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 211
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 212
    aget-object v4, v3, p1

    .line 213
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    add-int/lit8 v6, p1, 0x1

    :goto_0
    and-int/2addr v6, v5

    .line 214
    aget-wide v7, p2, v6

    cmp-long v9, v7, v0

    if-eqz v9, :cond_4

    .line 215
    invoke-virtual {p0, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v9

    sub-int v10, v6, v9

    and-int/2addr v10, v5

    sub-int v9, p1, v9

    and-int/2addr v9, v5

    if-le v10, v9, :cond_3

    .line 217
    aput-wide v7, p2, p1

    .line 218
    aget-object v7, v3, v6

    aput-object v7, v3, p1

    move p1, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    :cond_4
    aput-wide v0, p2, p1

    .line 224
    aput-object v2, v3, p1

    .line 225
    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return-object v4
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    :cond_0
    return-void

    .line 243
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
    .locals 10

    .line 412
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 416
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 417
    array-length v3, v1

    .line 418
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 419
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 423
    aget-wide v8, v1, v4

    cmp-long v3, v8, v6

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    .line 432
    aget-wide v8, v1, v4

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, ", "

    .line 434
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 474
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_1

    .line 476
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0
.end method
