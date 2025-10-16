.class final Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iput p5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Lj$/util/function/IntConsumer;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iput-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, v4, v5}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Lj$/util/function/IntConsumer;->accept(I)V

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    cmp-long v7, v0, v2

    if-ltz v7, :cond_0

    :cond_1
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Map$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Lj$/util/function/IntConsumer;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    iget v3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v2, v3, v4}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v2

    invoke-interface {p1, v2}, Lj$/util/function/IntConsumer;->accept(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public final trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .locals 8

    iget-wide v1, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v7, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    :goto_0
    return-object v0
.end method
