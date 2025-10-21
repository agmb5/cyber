.class final Lj$/util/stream/Nodes$DoubleSpinedNodeBuilder;
.super Lj$/util/stream/SpinedBuffer$OfDouble;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node$OfDouble;
.implements Lj$/util/stream/Node$Builder$OfDouble;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 0

    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final begin(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public final build()Lj$/util/stream/Node$OfDouble;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/Node;
    .locals 0

    return-object p0
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final copyInto(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [D

    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public final synthetic copyInto([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V

    return-void
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final forEach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public final getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfDouble;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 2
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJ)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
