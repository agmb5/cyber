.class public final synthetic Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 2

    sget v0, Lj$/time/temporal/TemporalQueries;->$r8$clinit:I

    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
