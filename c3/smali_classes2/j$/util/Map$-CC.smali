.class public abstract synthetic Lj$/util/Map$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    check-cast p0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$4Adapter;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    check-cast p0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$4Adapter;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$getExactSizeIfKnown(Lj$/util/Spliterator;)J
    .locals 2

    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static $default$hasCharacteristics(Lj$/util/Spliterator;I)Z
    .locals 0

    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Map$-CC;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lj$/util/stream/Node$-CC;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static $default$removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z
    .locals 3

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lj$/util/DesugarCollections;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v2, v1}, Lj$/util/function/Supplier$VivifiedWrapper;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static $default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Map$-CC;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/stream/Node$-CC;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)Z
    .locals 1

    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z
    .locals 1

    instance-of v0, p1, Lj$/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)Z
    .locals 1

    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static forEach(Ljava/util/Collection;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0, p1}, Lj$/util/Collection;->forEach(Lj$/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 3

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_LIST:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lj$/util/DesugarCollections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, v0, v1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;
    .locals 2

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/LinkedHashSet;

    .line 1
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 2
    :cond_1
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/SortedSet;

    .line 3
    new-instance v0, Lj$/util/SortedSet$1;

    invoke-direct {v0, p0, p0}, Lj$/util/SortedSet$1;-><init>(Ljava/util/SortedSet;Ljava/util/Collection;)V

    return-object v0

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Set;

    .line 5
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 6
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/List;

    .line 7
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 8
    :cond_4
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4040

    return v0
.end method

.method public estimateSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
