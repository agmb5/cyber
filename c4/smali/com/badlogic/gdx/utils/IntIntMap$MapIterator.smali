.class Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IntIntMap;

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 517
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 518
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 532
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 533
    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 534
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 9

    .line 542
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    .line 548
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 549
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 550
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    add-int/lit8 v5, v0, 0x1

    :goto_0
    and-int/2addr v5, v4

    .line 551
    aget v6, v2, v5

    if-eqz v6, :cond_2

    .line 552
    iget-object v7, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v4

    sub-int v7, v0, v7

    and-int/2addr v7, v4

    if-le v8, v7, :cond_1

    .line 554
    aput v6, v2, v0

    .line 555
    aget v6, v3, v5

    aput v6, v3, v0

    move v0, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 560
    :cond_2
    aput v1, v2, v0

    .line 561
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    .line 563
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return-void

    .line 546
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

    .line 522
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 523
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    :goto_0
    return-void
.end method
