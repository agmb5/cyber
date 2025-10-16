.class public Lcom/badlogic/gdx/utils/Queue;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Queue$QueueIterable;,
        Lcom/badlogic/gdx/utils/Queue$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected head:I

.field private iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

.field public size:I

.field protected tail:I

.field protected values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 45
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Queue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 51
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 58
    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 84
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 85
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 89
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 92
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 94
    :cond_1
    aput-object p1, v0, v1

    .line 96
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 97
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 67
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 71
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    aput-object p1, v0, v1

    .line 72
    array-length p1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 75
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-void
.end method

.method public clear()V
    .locals 6

    .line 306
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 308
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 309
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    :goto_0
    if-ge v1, v2, :cond_3

    .line 314
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 319
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 322
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_3
    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 326
    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 327
    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/2addr v0, p1

    .line 104
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    array-length p1, p1

    if-ge p1, v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 393
    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_1

    goto :goto_2

    .line 395
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/Queue;

    .line 396
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 398
    iget v3, p1, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v3, v2, :cond_2

    return v1

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 401
    array-length v4, v3

    .line 402
    iget-object v5, p1, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 403
    array-length v6, v5

    .line 405
    iget v7, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 406
    iget p1, p1, Lcom/badlogic/gdx/utils/Queue;->head:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_8

    .line 408
    aget-object v9, v3, v7

    .line 409
    aget-object v10, v5, p1

    if-nez v9, :cond_3

    if-nez v10, :cond_4

    goto :goto_1

    .line 411
    :cond_3
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    return v1

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ne v7, v4, :cond_6

    const/4 v7, 0x0

    :cond_6
    if-ne p1, v6, :cond_7

    const/4 p1, 0x0

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 423
    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_1

    goto :goto_1

    .line 425
    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/Queue;

    .line 426
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 428
    iget v3, p1, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v3, v2, :cond_2

    return v1

    .line 430
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 431
    array-length v4, v3

    .line 432
    iget-object v5, p1, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 433
    array-length v6, v5

    .line 435
    iget v7, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 436
    iget p1, p1, Lcom/badlogic/gdx/utils/Queue;->head:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_6

    .line 438
    aget-object v9, v3, v7

    aget-object v10, v5, p1

    if-eq v9, v10, :cond_3

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

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v0, v0, v1

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 296
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/2addr v1, p1

    .line 297
    array-length p1, v0

    if-lt v1, p1, :cond_0

    .line 298
    array-length p1, v0

    sub-int/2addr v1, p1

    .line 300
    :cond_0
    aget-object p1, v0, v1

    return-object p1

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
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
    .locals 8

    .line 372
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 374
    array-length v2, v1

    .line 375
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    .line 379
    aget-object v7, v1, v3

    mul-int/lit8 v4, v4, 0x1f

    if-eqz v7, :cond_0

    .line 382
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v4, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 181
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    const/4 v4, 0x0

    if-nez p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    if-ge v2, v3, :cond_3

    move p2, v2

    :goto_0
    if-ge p2, v3, :cond_d

    .line 195
    aget-object v4, v0, p2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int/2addr p2, v2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 197
    :cond_3
    array-length p2, v0

    move v5, v2

    :goto_1
    if-ge v5, p2, :cond_5

    .line 198
    aget-object v6, v0, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sub-int/2addr v5, v2

    return v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ge v4, v3, :cond_d

    .line 200
    aget-object p2, v0, v4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    array-length p1, v0

    :goto_3
    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    return v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-ge v2, v3, :cond_9

    move p2, v2

    :goto_5
    if-ge p2, v3, :cond_d

    .line 185
    aget-object v4, v0, p2

    if-ne v4, p1, :cond_8

    sub-int/2addr p2, v2

    return p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 187
    :cond_9
    array-length p2, v0

    move v5, v2

    :goto_6
    if-ge v5, p2, :cond_b

    .line 188
    aget-object v6, v0, v5

    if-ne v6, p1, :cond_a

    sub-int/2addr v5, v2

    return v5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-ge v4, v3, :cond_d

    .line 190
    aget-object p2, v0, v4

    if-ne p2, p1, :cond_c

    array-length p1, v0

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 255
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 335
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;-><init>(Lcom/badlogic/gdx/utils/Queue;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 275
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 280
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 283
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 285
    :cond_0
    aget-object v0, v0, v1

    return-object v0

    .line 277
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 141
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    .line 142
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 143
    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 144
    array-length v1, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 147
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-object v3

    .line 136
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 222
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/2addr p1, v1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 226
    aget-object v1, v0, p1

    add-int/lit8 v4, p1, 0x1

    sub-int v5, v2, p1

    .line 227
    invoke-static {v0, v4, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    aput-object v3, v0, v2

    .line 229
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_0

    .line 230
    :cond_0
    array-length v4, v0

    if-lt p1, v4, :cond_1

    .line 231
    array-length v1, v0

    sub-int/2addr p1, v1

    .line 232
    aget-object v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    .line 233
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_0

    .line 236
    :cond_1
    aget-object v2, v0, p1

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr p1, v1

    .line 237
    invoke-static {v0, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    aput-object v3, v0, v1

    .line 239
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 240
    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    :cond_2
    move-object v1, v2

    .line 244
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-object v1

    .line 219
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
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

.method public removeLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 162
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 165
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 167
    :cond_0
    aget-object v3, v1, v2

    const/4 v4, 0x0

    .line 168
    aput-object v4, v1, v2

    .line 169
    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v0, v0, -0x1

    .line 170
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    return-object v3

    .line 158
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Queue;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Queue;->removeIndex(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method protected resize(I)V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 112
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 113
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    .line 118
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 119
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v4, :cond_1

    .line 121
    array-length v4, v0

    sub-int/2addr v4, v1

    .line 122
    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v0, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 126
    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 127
    iget p1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 345
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 346
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 348
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v4, 0x5b

    .line 349
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 350
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 351
    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    const-string v4, ", "

    .line 352
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 354
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 355
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 359
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 361
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 362
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 364
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 365
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 366
    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    .line 367
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
