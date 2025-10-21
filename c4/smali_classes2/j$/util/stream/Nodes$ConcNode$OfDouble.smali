.class final Lj$/util/stream/Nodes$ConcNode$OfDouble;
.super Lj$/util/stream/Nodes$ConcNode$OfPrimitive;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node$OfDouble;


# direct methods
.method constructor <init>(Lj$/util/stream/Node$OfDouble;Lj$/util/stream/Node$OfDouble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;Lj$/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
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

.method public final synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$forEach(Lj$/util/stream/Node$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [D

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Lj$/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 2
    new-instance v0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Lj$/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJ)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
