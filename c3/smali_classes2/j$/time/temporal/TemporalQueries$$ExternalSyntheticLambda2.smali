.class public final synthetic Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/TemporalQueries;->$r8$clinit:I

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/TemporalUnit;

    return-object p1
.end method
