.class public final synthetic Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;->INSTANCE:Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

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

    sget v0, Lj$/time/format/DateTimeFormatterBuilder;->$r8$clinit:I

    sget v0, Lj$/time/temporal/TemporalQueries;->$r8$clinit:I

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
