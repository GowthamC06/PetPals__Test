using PetPals.Model;
using PetPals.Repository;
using System;
using System.Collections.Generic;

namespace PetPals.Service
{
    internal interface IAdoptionEventService
    {
        
        List<AdoptionEvent> GetAllAdoptionEvents();
        AdoptionEvent GetAdoptionEventById(int eventId);

     
        void CreateAdoptionEvent(AdoptionEvent adoptionEvent);

       
        void UpdateAdoptionEvent(AdoptionEvent adoptionEvent);

        
        void DeleteAdoptionEvent(int eventId);

       
        List<AdoptionEvent> GetAdoptionEventsByCriteria(string status, DateTime? startDate, DateTime? endDate);
    }
}
