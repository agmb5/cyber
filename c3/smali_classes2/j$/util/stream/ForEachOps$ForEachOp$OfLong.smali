.class final Lj$/util/stream/ForEachOps$ForEachOp$OfLong;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink$OfLong;


# instance fields
.field final consumer:Lj$/util/function/LongConsumer;


# direct methods
.method constructor <init>(Lj$/util/function/LongConsumer;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Lj$/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Lj$/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method
