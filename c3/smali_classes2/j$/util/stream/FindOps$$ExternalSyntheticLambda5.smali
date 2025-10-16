.class public final synthetic Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    .line 2
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    .line 3
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/LongSummaryStatistics;

    check-cast p2, Lj$/util/LongSummaryStatistics;

    invoke-virtual {p1, p2}, Lj$/util/LongSummaryStatistics;->combine(Lj$/util/LongSummaryStatistics;)V

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/FindOps$FindSink$OfInt;

    invoke-direct {v0}, Lj$/util/stream/FindOps$FindSink$OfInt;-><init>()V

    return-object v0
.end method
