package com.example.accidentsRS.services;

import com.example.accidentsRS.model.AccidentModel;
import com.example.accidentsRS.model.Climate;
import com.example.accidentsRS.model.DateTimeModel;
import com.example.accidentsRS.model.filter.FilterWrapperModel;
import com.example.accidentsRS.model.update.UpdateModel;

import java.util.List;

public interface AccidentService {
    void createAccidentRecord(AccidentModel accidentModel);
    List<AccidentModel> findAllMatchingFilters(List<FilterWrapperModel> accidentFilters);
    void updateAllMatchingFilters(List<FilterWrapperModel> accidentFilters, List<UpdateModel> updateValues);
    void deleteAllMatchingFilters(List<FilterWrapperModel> accidentFilters);
    void updateWithClimateData(Climate climate, DateTimeModel dateTime);
}
