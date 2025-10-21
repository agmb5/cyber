.class Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->valid:Z

    .line 533
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    .line 534
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 8

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 548
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 549
    aget-wide v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 550
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 10

    .line 558
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    .line 564
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 565
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 566
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 568
    aget-wide v5, v1, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    .line 569
    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v7, v5, v6}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v7

    sub-int v8, v4, v7

    and-int/2addr v8, v3

    sub-int v7, v0, v7

    and-int/2addr v7, v3

    if-le v8, v7, :cond_1

    .line 571
    aput-wide v5, v1, v0

    .line 572
    aget-object v5, v2, v4

    aput-object v5, v2, v0

    move v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 577
    :cond_2
    aput-wide v7, v1, v0

    const/4 v1, 0x0

    .line 578
    aput-object v1, v2, v0

    .line 579
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    .line 581
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return-void

    .line 562
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

    .line 538
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 539
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    :goto_0
    return-void
.end method
