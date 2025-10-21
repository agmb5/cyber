.class final Lj$/util/stream/Nodes$CollectorTask$OfInt;
.super Lj$/util/stream/Nodes$CollectorTask;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 1
    sget-object p3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$7:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$11:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V

    return-void

    .line 2
    :cond_0
    sget-object p3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$4:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    sget-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$8:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V

    return-void

    .line 3
    :cond_1
    sget-object p3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$10:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v0, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$19:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/Node$-CC;Lj$/util/function/IntFunction;Lj$/util/Spliterator;)V
    .locals 2

    new-instance v0, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    sget-object p2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$5:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p3, v0, p2}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V

    return-void
.end method
