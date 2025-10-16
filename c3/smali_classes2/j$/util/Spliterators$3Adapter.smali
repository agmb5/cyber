.class final Lj$/util/Spliterators$3Adapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfLong;
.implements Lj$/util/function/LongConsumer;
.implements Lj$/util/Iterator;


# instance fields
.field nextElement:J

.field final synthetic val$spliterator:Lj$/util/Spliterator$OfLong;

.field valueReady:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfLong;)V
    .locals 0

    iput-object p1, p0, Lj$/util/Spliterators$3Adapter;->val$spliterator:Lj$/util/Spliterator$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    iput-wide p1, p0, Lj$/util/Spliterators$3Adapter;->nextElement:J

    return-void
.end method

.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    :goto_0
    return-void

    :cond_1
    const-class p1, Lj$/util/Spliterators$3Adapter;

    const-string v0, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)"

    invoke-static {p1, v0}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final forEachRemaining(Lj$/util/function/LongConsumer;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lj$/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Spliterators$3Adapter;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/Spliterators$3Adapter;->val$spliterator:Lj$/util/Spliterator$OfLong;

    invoke-interface {v0, p0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    :cond_0
    iget-boolean v0, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    return v0
.end method

.method public final next()Ljava/lang/Long;
    .locals 2

    .line 1
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Spliterators$3Adapter;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lj$/util/Spliterators$3Adapter;

    const-string v1, "{0} calling PrimitiveIterator.OfLong.nextLong()"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lj$/util/Spliterators$3Adapter;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final nextLong()J
    .locals 2

    iget-boolean v0, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/Spliterators$3Adapter;->valueReady:Z

    iget-wide v0, p0, Lj$/util/Spliterators$3Adapter;->nextElement:J

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    invoke-static {}, Lj$/util/Iterator$-CC;->$default$remove()V

    const/4 v0, 0x0

    throw v0
.end method
