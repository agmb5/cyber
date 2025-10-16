.class public Lcom/badlogic/gdx/utils/ObjectFloatMap;
.super Ljava/lang/Object;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[F

.field values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

.field values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    int-to-long v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    .line 93
    new-array p2, p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    return-void

    .line 85
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    return-void
.end method

.method private putResize(Ljava/lang/Object;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 178
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 179
    aput-object p1, v0, v1

    .line 180
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 177
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 381
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 386
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_4

    .line 388
    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_6

    .line 396
    aget-object v4, v1, v3

    if-nez v4, :cond_5

    goto :goto_3

    .line 398
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    aget v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    const/16 p1, 0x7d

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 258
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 259
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 289
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(F)Z
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 273
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 274
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v1, v2

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(FF)Z
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 283
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 284
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v1, v2

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 319
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 416
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    if-nez v0, :cond_1

    .line 418
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 419
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    return-object v0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 356
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 357
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    .line 358
    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 361
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 362
    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    .line 364
    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->get(Ljava/lang/Object;F)F

    move-result v8

    cmpl-float v7, v8, v7

    if-nez v7, :cond_3

    .line 365
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 366
    :cond_3
    aget v6, v3, v5

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public findKey(F)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TK;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 296
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 297
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 298
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 299
    aget v4, v1, v2

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findKey(FF)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TK;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 309
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 310
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 311
    aget v4, v1, v2

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget p2, p2, p1

    :goto_0
    return p2
.end method

.method public getAndIncrement(Ljava/lang/Object;FF)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget p2, p1, v0

    .line 199
    aget v1, p1, v0

    add-float/2addr v1, p3

    aput v1, p1, v0

    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 204
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    add-float/2addr p3, p2

    aput p3, p1, v0

    .line 205
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt p1, p3, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    :cond_1
    return p2
.end method

.method public hashCode()I
    .locals 7

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 346
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 347
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 348
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 349
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    aget v6, v2, v4

    invoke-static {v6}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 239
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 460
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    if-nez v0, :cond_1

    .line 462
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 463
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    return-object v0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 129
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 131
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 128
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public notEmpty()Z
    .locals 1

    .line 234
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;FF)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget p3, p1, v0

    .line 153
    aput p2, p1, v0

    return p3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 158
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, p1, v0

    .line 159
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    :cond_1
    return p3
.end method

.method public put(Ljava/lang/Object;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 143
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, p1, v0

    .line 144
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    :cond_1
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 164
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->ensureCapacity(I)V

    .line 165
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 166
    iget-object p1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 168
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 169
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 170
    aget v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;F)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    .line 214
    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 216
    aget v1, v0, p1

    .line 217
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    add-int/lit8 v3, p1, 0x1

    :goto_0
    and-int/2addr v3, v2

    .line 218
    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v2

    sub-int v5, p1, v5

    and-int/2addr v5, v2

    if-le v6, v5, :cond_1

    .line 221
    aput-object v4, p2, p1

    .line 222
    aget v4, v0, v3

    aput v4, v0, p1

    move p1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 227
    aput-object v0, p2, p1

    .line 228
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    return v1
.end method

.method final resize(I)V
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 325
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 326
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    int-to-long v1, v1

    .line 327
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    .line 329
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 332
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 333
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 335
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 337
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 338
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->putResize(Ljava/lang/Object;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 247
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    :cond_0
    return-void

    .line 246
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
    .locals 2

    const-string v0, ", "

    const/4 v1, 0x1

    .line 377
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;
    .locals 3

    .line 438
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 441
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    return-object v0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    return-object v0
.end method
