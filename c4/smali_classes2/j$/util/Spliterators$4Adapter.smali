.class final Lj$/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfDouble;
.implements Lj$/util/function/DoubleConsumer;
.implements Lj$/util/Iterator;


# instance fields
.field nextElement:D

.field final synthetic val$spliterator:Lj$/util/Spliterator$OfDouble;

.field valueReady:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;)V
    .locals 0

    iput-object p1, p0, Lj$/util/Spliterators$4Adapter;->val$spliterator:Lj$/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    iput-wide p1, p0, Lj$/util/Spliterators$4Adapter;->nextElement:D

    return-void
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Lj$/util/function/DoubleConsumer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lj$/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Spliterators$4Adapter;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lj$/util/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$4Adapter;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/Spliterators$4Adapter;->val$spliterator:Lj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    :cond_0
    iget-boolean v0, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public final next()Ljava/lang/Double;
    .locals 2

    .line 1
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Spliterators$4Adapter;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lj$/util/Spliterators$4Adapter;

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lj$/util/Spliterators$4Adapter;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final nextDouble()D
    .locals 2

    iget-boolean v0, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/Spliterators$4Adapter;->hasNext()Z

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

    iput-boolean v0, p0, Lj$/util/Spliterators$4Adapter;->valueReady:Z

    iget-wide v0, p0, Lj$/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    invoke-static {}, Lj$/util/Iterator$-CC;->$default$remove()V

    const/4 v0, 0x0

    throw v0
.end method
