.class Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectLongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    .line 469
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    .line 470
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 481
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 482
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 483
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 8

    .line 491
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_3

    .line 493
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 494
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 495
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 497
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 498
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_0

    .line 500
    aput-object v5, v1, v0

    .line 501
    aget-wide v5, v2, v4

    aput-wide v5, v2, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 506
    aput-object v2, v1, v0

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    .line 508
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    :cond_2
    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    return-void

    .line 492
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 474
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 475
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    .line 476
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->findNextIndex()V

    return-void
.end method
