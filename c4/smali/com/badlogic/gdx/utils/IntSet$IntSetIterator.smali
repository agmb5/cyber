.class public Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSetIterator"
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field private static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/IntSet;

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 373
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    .line 374
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 388
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 389
    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 390
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void
.end method

.method public next()I
    .locals 2

    .line 422
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v0, :cond_2

    .line 423
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    if-eqz v0, :cond_1

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    aget v0, v0, v1

    .line 425
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 426
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    return v0

    .line 423
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 8

    .line 398
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v2, :cond_0

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    .line 404
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 405
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 406
    aget v5, v2, v4

    if-eqz v5, :cond_2

    .line 407
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_1

    .line 409
    aput v5, v2, v0

    move v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    :cond_2
    aput v1, v2, v0

    .line 415
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    .line 417
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return-void

    .line 402
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x2

    .line 378
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 379
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    :goto_0
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    .line 432
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 433
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
