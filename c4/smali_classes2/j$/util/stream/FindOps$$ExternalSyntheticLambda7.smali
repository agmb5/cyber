.class public final synthetic Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    .line 2
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/SliceOps$3;->$r8$clinit:I

    new-array p1, p1, [Ljava/lang/Long;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/FindOps$FindSink$OfRef;

    invoke-direct {v0}, Lj$/util/stream/FindOps$FindSink$OfRef;-><init>()V

    return-object v0
.end method
