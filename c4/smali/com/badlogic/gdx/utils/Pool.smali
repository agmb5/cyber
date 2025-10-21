.class public abstract Lcom/badlogic/gdx/utils/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final freeObjects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final max:I

.field public peak:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const v1, 0x7fffffff

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x7fffffff

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    .line 45
    iput p2, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public fill(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 64
    iget v0, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Pool;->reset(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    .line 92
    iget v1, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    const/4 v2, 0x0

    .line 93
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v3, :cond_2

    .line 94
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v1, :cond_1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 97
    :cond_1
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/Pool;->reset(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget p1, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "objects cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getFree()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method protected abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected reset(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    instance-of v0, p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    invoke-interface {p1}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    :cond_0
    return-void
.end method
