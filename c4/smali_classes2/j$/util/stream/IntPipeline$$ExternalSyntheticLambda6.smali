.class public final synthetic Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget v0, p0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$1$1;

    .line 3
    iget-object v0, v0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
