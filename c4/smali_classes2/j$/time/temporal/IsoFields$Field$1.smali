.class final enum Lj$/time/temporal/IsoFields$Field$1;
.super Lj$/time/temporal/IsoFields$Field;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "DAY_OF_QUARTER"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .locals 5

    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {}, Lj$/time/temporal/IsoFields$Field;->access$200()[I

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    sget-object v4, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    new-instance p1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/temporal/IsoFields$Field;->access$100(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final range()Lj$/time/temporal/ValueRange;
    .locals 4

    const-wide/16 v0, 0x5a

    const-wide/16 v2, 0x5c

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->of$1(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public final rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 8

    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object p1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {p1, v0, v1}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long p1, v0, v6

    if-nez p1, :cond_2

    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$1;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
