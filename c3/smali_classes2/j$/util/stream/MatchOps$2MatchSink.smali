.class final Lj$/util/stream/MatchOps$2MatchSink;
.super Lj$/util/stream/MatchOps$BooleanTerminalSink;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# instance fields
.field final synthetic val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Lj$/util/function/IntPredicate;


# direct methods
.method constructor <init>(Lj$/util/stream/MatchOps$MatchKind;Lj$/util/function/IntPredicate;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Lj$/util/stream/MatchOps$2MatchSink;->val$predicate:Lj$/util/function/IntPredicate;

    invoke-direct {p0, p1}, Lj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/MatchOps$2MatchSink;->val$predicate:Lj$/util/function/IntPredicate;

    check-cast v0, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v0, p1}, Lj$/util/function/Supplier$VivifiedWrapper;->test(I)Z

    move-result p1

    iget-object v0, p0, Lj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Lj$/util/stream/MatchOps$MatchKind;->access$000(Lj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    iget-object p1, p0, Lj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1}, Lj$/util/stream/MatchOps$MatchKind;->access$100(Lj$/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    iput-boolean p1, p0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    :cond_0
    return-void
.end method

.method public final synthetic accept(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method
