.class public Lcom/badlogic/gdx/utils/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[I

.field values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

.field values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

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
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    int-to-long v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    .line 93
    new-array p2, p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    return-void
.end method

.method private putResize(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 176
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 177
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 178
    aput-object p1, v0, v1

    .line 179
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 176
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 361
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_4

    .line 363
    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 365
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_6

    .line 371
    aget-object v4, v1, v3

    if-nez v4, :cond_5

    goto :goto_3

    .line 373
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    aget v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    const/16 p1, 0x7d

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 260
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 256
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(I)Z
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 270
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 271
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v1, v2

    if-ne v4, p1, :cond_0

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

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 391
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 394
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 404
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 331
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 332
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 333
    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 335
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 336
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 337
    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    .line 339
    invoke-virtual {p1, v6, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v7

    if-nez v7, :cond_3

    .line 340
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 341
    :cond_3
    aget v6, v3, v5

    if-eq v7, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 284
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 285
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 286
    aget v4, v1, v2

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p2, p2, p1

    :goto_0
    return p2
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 196
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p2, p1, v0

    .line 197
    aget v1, p1, v0

    add-int/2addr v1, p3

    aput v1, p1, v0

    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 202
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    add-int/2addr p3, p2

    aput p3, p1, v0

    .line 203
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt p1, p3, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    :cond_1
    return p2
.end method

.method public hashCode()I
    .locals 7

    .line 319
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 322
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 323
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    aget v6, v2, v4

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

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 435
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    if-nez v0, :cond_1

    .line 437
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 438
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    return-object v0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

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
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

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
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

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

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

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

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p3, p1, v0

    .line 152
    aput p2, p1, v0

    return p3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 157
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, p1, v0

    .line 158
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    :cond_1
    return p3
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 143
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, p1, v0

    .line 144
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    :cond_1
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 163
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->ensureCapacity(I)V

    .line 164
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 165
    iget-object p1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 167
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 168
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 169
    aget v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    .line 211
    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 213
    aget v1, v0, p1

    .line 214
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    add-int/lit8 v3, p1, 0x1

    :goto_0
    and-int/2addr v3, v2

    .line 215
    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v2

    sub-int v5, p1, v5

    and-int/2addr v5, v2

    if-le v6, v5, :cond_1

    .line 218
    aput-object v4, p2, p1

    .line 219
    aget v4, v0, v3

    aput v4, v0, p1

    move p1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 224
    aput-object v0, p2, p1

    .line 225
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    return v1
.end method

.method final resize(I)V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 300
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 301
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    int-to-long v1, v1

    .line 302
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 307
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 308
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 310
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 312
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 313
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

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
    .locals 2

    const-string v0, ", "

    const/4 v1, 0x1

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
    .locals 3

    .line 413
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 416
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 426
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0
.end method
