.class final Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink$OfDouble;


# instance fields
.field final consumer:Lj$/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Lj$/util/function/DoubleConsumer;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Lj$/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Lj$/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/DoubleConsumer;->accept(D)V

    return-void
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
